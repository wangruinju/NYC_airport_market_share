# NYC_airport_market_share

This is a project based on [NYC taxi database](https://cloud.google.com/bigquery/public-data/nyc-tlc-trips) on Google cloud. The total datasets is about 90GB.

# Taxi Platforms

The yellow and green taxi trip records include fields capturing pick-up and drop-off dates/times, pick-up and drop-off locations, trip distances, itemized fares, rate types, payment types, and driver-reported passenger counts. The data used in the attached datasets were collected and provided to the NYC Taxi and Limousine Commission (TLC) by technology providers authorized under the Taxicab & Livery Passenger Enhancement Programs (TPEP/LPEP). The  trip data was not created by the TLC, and TLC makes no representations as to the accuracy of these data.

The For-Hire Vehicle (“FHV”) trip records include fields capturing the dispatching base license number and the pick-up date, time, and taxi zone location ID (shape file below). These records are generated from the FHV Trip Record submissions made by bases. Note: The TLC publishes base trip record data as submitted by the bases, and we cannot guarantee or confirm their accuracy or completeness. Therefore, this may not represent the total amount of trips dispatched by all TLC-licensed bases. The TLC performs routine reviews of the records and takes enforcement actions when necessary to ensure, to the extent possible, complete and accurate information.

## Question 1: Market Share of Airlines Using NYC Taxi Data

## Target for airport

STEP 1: get the GPS latitude and longitude of [JFK Airport](https://tools.wmflabs.org/geohack/geohack.php?pagename=John_F._Kennedy_International_Airport&params=40_38_23_N_073_46_44_W_region:US-NY_type:airport), [Newark Airport](https://tools.wmflabs.org/geohack/geohack.php?pagename=Newark_Liberty_International_Airport&params=40_41_33_N_074_10_07_W_region:US-NJ_type:airport), [LaGuardia Airport](https://tools.wmflabs.org/geohack/geohack.php?pagename=LaGuardia_Airport&params=40_46_38.1_N_73_52_21.4_W_region:US-NY_type:airport).

| Airport    | Latitude  | Longitude  |
|------------|-----------|------------|
| JFK        | 40.639722 | -73.778889 |
| Newark     | 40.6925   | -74.168611 |
| La Guardia | 40.77725  | -73.872611 |

STEP 2: get the area size of each airport based on wikipedia.

| Airport    | Area     |
|------------|----------|
| JFK        | 19.951   |
| Newark     | 0.275186 |
| La Guardia | 2.75186  |

STEP 3: get the unit length of 1 degree at Latitude and Longitude Scale of New York based on [geographical calculator](https://msi.nga.mil/MSISiteContent/StaticFiles/Calculators/degree.html).

| Conversion        | Unit (km/degree) |
|-------------------|------------------|
| unit of latitude  | 111.047          |
| unit of longitude | 31.194           |

STEP 4: set up the possible box range of each airport, which will be convenient for querying data in the next section.

| Airport    | Latitude (-)  | Latitude (+)  | Longitude (-)  | Longitude (+)  |
|------------|---------------|---------------|----------------|----------------|
| JFK        | 40.5994989032 | 40.6799450968 | -73.922078531  | -73.635699469  |
| Newark     | 40.6877760386 | 40.6972239614 | -74.1854277512 | -74.1517942488 |
| La Guardia | 40.7623115225 | 40.7921884775 | -73.9257902368 | -73.8194317632 |

## Data ETL

The basic idea is to run [complex SQL](https://github.com/wangruinju/NYC_airport_market_share/blob/master/SQL/model_11_9.sql) on BigQuery platform and create a table like the following example:

| year | month | trip_time | trip_distance | passenger_count | airport           | source    |
|------|-------|-----------|---------------|-----------------|-------------------|-----------|
| 2012 | 12    | 5.8       | 2.3           | 2               | JFK Airport       | yellow    |
| 2015 | 8     | null      | null          | 1 (assumed)     | Newark Airport    | uber/lyft |
| 2009 | 2     | 3.4       | 15.3          | 4               | LaGuardia Airport | green     |

The extracted data is about 6GB.

Comments about the data:

1. Yellow taxi have the full complete data from 2009-2016 while green taxi data ranges from 2013-2016. 
2. Uber/Lyft platform ranges from 2015-2016 and only provides pickup time and location information.
3. The data of green taxi in 2016 has some flaws. Neither location nor the number of passenger are real values at the same time.

Solving such issue is to use historical data of how many passengers the green car will carry. Based on the [SQL codes](https://github.com/wangruinju/NYC_airport_market_share/blob/master/SQL/green_car_pa_per_passager.sql), I set the average number of passengers per green taxi is 1.45, which might be not quite right (You will see some abnomality in the later figures).

## Passenger Traffic
<img src = https://github.com/wangruinju/NYC_airport_market_share/blob/master/images/Dashboard%201.png width="900">

Some brief conclusions from the dashboard above:

1. Taxi Business by Year: we can see the passenger traffic keeps growing until 2015. There is a big drop because we could not estimate the accurate number of passenger who took green taxi at 2016.

2. Taxi Business by Month: it is reasonable that we can show the total number of passenger traffic monthly. It is interesting to see the passenger traffic fluctuate from Jan to Dec. The peak takes place at early summer. This is when the tourism of New York city gets popular. Futher exploration may be combined with tourism and weather data.

3. Taxi Business at Airport: still we use the monthly statistics to check taxi activity at these three airports. The passenger traffic at the airport actually reflect some insights of the market shares. However, it is not reasonable to see the low percentile of Newark Airport. One possible reason is that people who live in New Jersey might come to Newark first. In that case, we could not have the data to justify the market share of Newark.

Also, the international airlines might be another problem for analyzing the market share. For example, La Guardia Airport does not have a lot of international services. Further exploration may be combined with flight data from 4 big airline company: AA, UA, Southwest and Delta.

Lastly, we don't cover the data of people who taking other transportaion platforms like train or self-pickup. Further exploration may be combined with public transportation data. The following figure shows the official statistics about market share at these three airports:

<img src = https://github.com/wangruinju/NYC_airport_market_share/blob/master/images/Anual%20Report.JPG width="900">

4. Taxi Platform: it is always to see how the new platforms compete with the traditional ones. Here I label "uber/lyft" to represent For-Hire Vehicle due to the fact that Uber and Lyft account for the most market. The following figure gives a real-time market share between Uber and Lyft.

<img src = https://github.com/wangruinju/NYC_airport_market_share/blob/master/images/uber_lyft_market_share_01.png width="600">

Even though we can't know get the complete passenger traffic of green taxi, we can see the decreasing trend of taxi market, especially yellow taxi. That is why we can hear some media news of taxi driver strike at New York city. It is the fact that either Uber or Lyft are gradually taking over the market share of taxi. Further exploration may be combined with media news about growths of Uber/Lyft and taxi development policy at New York city.

## Question 2: Correlate Taxi Trips to Property Prices
Applying the taxi data, we can create heat maps of taxi acitivity to help in pricing commericial/multi-family property. 



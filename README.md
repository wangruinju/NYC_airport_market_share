# NYC_airport_market_share

This is a project based on [NYC taxi database](https://cloud.google.com/bigquery/public-data/nyc-tlc-trips) on Google cloud.

# Taxi Platforms

The yellow and green taxi trip records include fields capturing pick-up and drop-off dates/times, pick-up and drop-off locations, trip distances, itemized fares, rate types, payment types, and driver-reported passenger counts. The data used in the attached datasets were collected and provided to the NYC Taxi and Limousine Commission (TLC) by technology providers authorized under the Taxicab & Livery Passenger Enhancement Programs (TPEP/LPEP). The  trip data was not created by the TLC, and TLC makes no representations as to the accuracy of these data.

The For-Hire Vehicle (“FHV”) trip records include fields capturing the dispatching base license number and the pick-up date, time, and taxi zone location ID (shape file below). These records are generated from the FHV Trip Record submissions made by bases. Note: The TLC publishes base trip record data as submitted by the bases, and we cannot guarantee or confirm their accuracy or completeness. Therefore, this may not represent the total amount of trips dispatched by all TLC-licensed bases. The TLC performs routine reviews of the records and takes enforcement actions when necessary to ensure, to the extent possible, complete and accurate information.

## Question 1: Market Share of Airlines Using NYC Taxi Data

## Target for airport

step 1: get the GPS latitude and longitude of three airports.

| Airport    | Latitude  | Longitude  |
|------------|-----------|------------|
| JFK        | 40.639722 | -73.778889 |
| Newark     | 40.6925   | -74.168611 |
| La Guardia | 40.77725  | -73.872611 |

## Data ETL

The basic idea is to run complex SQL on BigQuery platform and create a table like the following:



## Passenger Traffic
<img src = https://github.com/wangruinju/NYC_airport_market_share/blob/master/images/Dashboard%201.png width="900">

## Question 2: Correlate Taxi Trips to Property Prices
Applying the taxi data, we can create heat maps of taxi acitivity to help in pricing commericial/multi-family property.

# yellow
# 2016
select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"JFK Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2016`  
where 
(dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)
or (pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"LaGuardia Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2016`  
where 
(dropoff_longitude between -73.9257902368 and -73.8194317632
and dropoff_latitude between 40.7623115225 and 40.7921884775)
or (pickup_longitude between -73.9257902368 and -73.8194317632
and pickup_latitude between 40.7623115225 and 40.7921884775)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"Newark Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2016`  
where 
(dropoff_longitude between -74.1854277512 and -74.1517942488
and dropoff_latitude between 40.6877760386 and 40.6972239614)
or (pickup_longitude between -74.1854277512 and -74.1517942488
and pickup_latitude between 40.6877760386 and 40.6972239614)

# 2015
union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"JFK Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2015`  
where 
(dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)
or (pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"LaGuardia Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2015`  
where 
(dropoff_longitude between -73.9257902368 and -73.8194317632
and dropoff_latitude between 40.7623115225 and 40.7921884775)
or (pickup_longitude between -73.9257902368 and -73.8194317632
and pickup_latitude between 40.7623115225 and 40.7921884775)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"Newark Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2015`  
where 
(dropoff_longitude between -74.1854277512 and -74.1517942488
and dropoff_latitude between 40.6877760386 and 40.6972239614)
or (pickup_longitude between -74.1854277512 and -74.1517942488
and pickup_latitude between 40.6877760386 and 40.6972239614)

# 2014
union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"JFK Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2014`  
where 
(dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)
or (pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"LaGuardia Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2014`  
where 
(dropoff_longitude between -73.9257902368 and -73.8194317632
and dropoff_latitude between 40.7623115225 and 40.7921884775)
or (pickup_longitude between -73.9257902368 and -73.8194317632
and pickup_latitude between 40.7623115225 and 40.7921884775)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"Newark Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2014`  
where 
(dropoff_longitude between -74.1854277512 and -74.1517942488
and dropoff_latitude between 40.6877760386 and 40.6972239614)
or (pickup_longitude between -74.1854277512 and -74.1517942488
and pickup_latitude between 40.6877760386 and 40.6972239614)

# 2013
union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"JFK Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2013`  
where 
(dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)
or (pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"LaGuardia Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2013`  
where 
(dropoff_longitude between -73.9257902368 and -73.8194317632
and dropoff_latitude between 40.7623115225 and 40.7921884775)
or (pickup_longitude between -73.9257902368 and -73.8194317632
and pickup_latitude between 40.7623115225 and 40.7921884775)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"Newark Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2013`  
where 
(dropoff_longitude between -74.1854277512 and -74.1517942488
and dropoff_latitude between 40.6877760386 and 40.6972239614)
or (pickup_longitude between -74.1854277512 and -74.1517942488
and pickup_latitude between 40.6877760386 and 40.6972239614)

# 2012
union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"JFK Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2012`  
where 
(dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)
or (pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"LaGuardia Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2012`  
where 
(dropoff_longitude between -73.9257902368 and -73.8194317632
and dropoff_latitude between 40.7623115225 and 40.7921884775)
or (pickup_longitude between -73.9257902368 and -73.8194317632
and pickup_latitude between 40.7623115225 and 40.7921884775)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"Newark Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2012`  
where 
(dropoff_longitude between -74.1854277512 and -74.1517942488
and dropoff_latitude between 40.6877760386 and 40.6972239614)
or (pickup_longitude between -74.1854277512 and -74.1517942488
and pickup_latitude between 40.6877760386 and 40.6972239614)

# 2011
union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"JFK Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2011`  
where 
(dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)
or (pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"LaGuardia Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2011`  
where 
(dropoff_longitude between -73.9257902368 and -73.8194317632
and dropoff_latitude between 40.7623115225 and 40.7921884775)
or (pickup_longitude between -73.9257902368 and -73.8194317632
and pickup_latitude between 40.7623115225 and 40.7921884775)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"Newark Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2011`  
where 
(dropoff_longitude between -74.1854277512 and -74.1517942488
and dropoff_latitude between 40.6877760386 and 40.6972239614)
or (pickup_longitude between -74.1854277512 and -74.1517942488
and pickup_latitude between 40.6877760386 and 40.6972239614)

# 2010
union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"JFK Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2010`  
where 
(dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)
or (pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"LaGuardia Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2010`  
where 
(dropoff_longitude between -73.9257902368 and -73.8194317632
and dropoff_latitude between 40.7623115225 and 40.7921884775)
or (pickup_longitude between -73.9257902368 and -73.8194317632
and pickup_latitude between 40.7623115225 and 40.7921884775)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"Newark Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2010`  
where 
(dropoff_longitude between -74.1854277512 and -74.1517942488
and dropoff_latitude between 40.6877760386 and 40.6972239614)
or (pickup_longitude between -74.1854277512 and -74.1517942488
and pickup_latitude between 40.6877760386 and 40.6972239614)

# 2009
union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"JFK Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2009`  
where 
(dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)
or (pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"LaGuardia Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2009`  
where 
(dropoff_longitude between -73.9257902368 and -73.8194317632
and dropoff_latitude between 40.7623115225 and 40.7921884775)
or (pickup_longitude between -73.9257902368 and -73.8194317632
and pickup_latitude between 40.7623115225 and 40.7921884775)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"Newark Airport" as airport,
"yellow" as source
from `bigquery-public-data.new_york.tlc_yellow_trips_2009`  
where 
(dropoff_longitude between -74.1854277512 and -74.1517942488
and dropoff_latitude between 40.6877760386 and 40.6972239614)
or (pickup_longitude between -74.1854277512 and -74.1517942488
and pickup_latitude between 40.6877760386 and 40.6972239614)

union ALL

# green
# 2016
# dataset issue with 2016 green 
# use the passenger rate 2013-2015 to justify

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
1.45 as passenger_count,
"JFK Airport" as airport,
"green" as source
from `bigquery-public-data.new_york.tlc_green_trips_2016`  
where 
(
    dropoff_longitude is not null 
and dropoff_latitude is not null
and dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968
)
or 
(
    pickup_longitude is not null 
and pickup_latitude is not null
and pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
1.45 as passenger_count,
"LaGuardia Airport" as airport,
"green" as source
from `bigquery-public-data.new_york.tlc_green_trips_2016`  
where 
(
    dropoff_longitude is not null 
and dropoff_latitude is not null
and dropoff_longitude between -73.9257902368 and -73.8194317632
and dropoff_latitude between 40.7623115225 and 40.7921884775)
or (
    pickup_longitude is not null 
and pickup_latitude is not null
and pickup_longitude between -73.9257902368 and -73.8194317632
and pickup_latitude between 40.7623115225 and 40.7921884775)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
1.45 as passenger_count,
"Newark Airport" as airport,
"green" as source
from `bigquery-public-data.new_york.tlc_green_trips_2016`  
where 
(
    dropoff_longitude is not null 
and dropoff_latitude is not null
and dropoff_longitude between -74.1854277512 and -74.1517942488
and dropoff_latitude between 40.6877760386 and 40.6972239614)
or (
    pickup_longitude is not null 
and pickup_latitude is not null
and pickup_longitude between -74.1854277512 and -74.1517942488
and pickup_latitude between 40.6877760386 and 40.6972239614)

union ALL

# 2015
select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"JFK Airport" as airport,
"green" as source
from `bigquery-public-data.new_york.tlc_green_trips_2015`  
where 
(
    dropoff_longitude is not null 
and dropoff_latitude is not null
and dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968
)
or 
(
    pickup_longitude is not null 
and pickup_latitude is not null
and pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"LaGuardia Airport" as airport,
"green" as source
from `bigquery-public-data.new_york.tlc_green_trips_2015`  
where 
(
    dropoff_longitude is not null 
and dropoff_latitude is not null
and dropoff_longitude between -73.9257902368 and -73.8194317632
and dropoff_latitude between 40.7623115225 and 40.7921884775)
or (
    pickup_longitude is not null 
and pickup_latitude is not null
and pickup_longitude between -73.9257902368 and -73.8194317632
and pickup_latitude between 40.7623115225 and 40.7921884775)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"Newark Airport" as airport,
"green" as source
from `bigquery-public-data.new_york.tlc_green_trips_2015`  
where 
(
    dropoff_longitude is not null 
and dropoff_latitude is not null
and dropoff_longitude between -74.1854277512 and -74.1517942488
and dropoff_latitude between 40.6877760386 and 40.6972239614)
or (
    pickup_longitude is not null 
and pickup_latitude is not null
and pickup_longitude between -74.1854277512 and -74.1517942488
and pickup_latitude between 40.6877760386 and 40.6972239614)

union ALL

# 2014
select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"JFK Airport" as airport,
"green" as source
from `bigquery-public-data.new_york.tlc_green_trips_2014`  
where 
(
    dropoff_longitude is not null 
and dropoff_latitude is not null
and dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968
)
or 
(
    pickup_longitude is not null 
and pickup_latitude is not null
and pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

union ALL
# 2014
select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"LaGuardia Airport" as airport,
"green" as source
from `bigquery-public-data.new_york.tlc_green_trips_2014`  
where 
(
    dropoff_longitude is not null 
and dropoff_latitude is not null
and dropoff_longitude between -73.9257902368 and -73.8194317632
and dropoff_latitude between 40.7623115225 and 40.7921884775)
or (
    pickup_longitude is not null 
and pickup_latitude is not null
and pickup_longitude between -73.9257902368 and -73.8194317632
and pickup_latitude between 40.7623115225 and 40.7921884775)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"Newark Airport" as airport,
"green" as source
from `bigquery-public-data.new_york.tlc_green_trips_2014`  
where 
(
    dropoff_longitude is not null 
and dropoff_latitude is not null
and dropoff_longitude between -74.1854277512 and -74.1517942488
and dropoff_latitude between 40.6877760386 and 40.6972239614)
or (
    pickup_longitude is not null 
and pickup_latitude is not null
and pickup_longitude between -74.1854277512 and -74.1517942488
and pickup_latitude between 40.6877760386 and 40.6972239614)

union ALL

# 2013
select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"JFK Airport" as airport,
"green" as source
from `bigquery-public-data.new_york.tlc_green_trips_2013`  
where 
(
    dropoff_longitude is not null 
and dropoff_latitude is not null
and dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968
)
or 
(
    pickup_longitude is not null 
and pickup_latitude is not null
and pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"LaGuardia Airport" as airport,
"green" as source
from `bigquery-public-data.new_york.tlc_green_trips_2013`  
where 
(
    dropoff_longitude is not null 
and dropoff_latitude is not null
and dropoff_longitude between -73.9257902368 and -73.8194317632
and dropoff_latitude between 40.7623115225 and 40.7921884775)
or (
    pickup_longitude is not null 
and pickup_latitude is not null
and pickup_longitude between -73.9257902368 and -73.8194317632
and pickup_latitude between 40.7623115225 and 40.7921884775)

union ALL

select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
TIMESTAMP_DIFF(dropoff_datetime, pickup_datetime, MINUTE) as trip_time,
trip_distance,
passenger_count,
"Newark Airport" as airport,
"green" as source
from `bigquery-public-data.new_york.tlc_green_trips_2013`  
where 
(
    dropoff_longitude is not null 
and dropoff_latitude is not null
and dropoff_longitude between -74.1854277512 and -74.1517942488
and dropoff_latitude between 40.6877760386 and 40.6972239614)
or (
    pickup_longitude is not null 
and pickup_latitude is not null
and pickup_longitude between -74.1854277512 and -74.1517942488
and pickup_latitude between 40.6877760386 and 40.6972239614)

union ALL

# uber/lyft
# 2016
select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
null as trip_time,
null as trip_distance,
1 as passenger_count,
zone as airport,
"uber/lyft" as source
from `bigquery-public-data.new_york.tlc_fhv_trips_2016`  
where  
zone = "JFK Airport"
OR
zone = "Newark Airport"
OR
zone = "LaGuardia Airport"

union ALL

# 2015
select 
extract(year from pickup_datetime) as year, 
extract(month from pickup_datetime) as month, 
null as trip_time,
null as trip_distance,
1 as passenger_count,
zone as airport,
"uber/lyft" as source
from `bigquery-public-data.new_york.tlc_fhv_trips_2015`  
where  
zone = "JFK Airport"
OR
zone = "Newark Airport"
OR
zone = "LaGuardia Airport"

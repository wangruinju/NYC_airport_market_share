# mysql
# jfk

# yellow
(
select year, cnt, "yellow" as platform from
(
select 2016 as year, sum(passenger_count) as cnt
from `bigquery-public-data.new_york.tlc_yellow_trips_2016`  
where (dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)
or (pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

union all

select 2015 as year, sum(passenger_count) as cnt
from `bigquery-public-data.new_york.tlc_yellow_trips_2015`
where (dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)
or (pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

union all

select 2014 as year, sum(passenger_count) as cnt
from `bigquery-public-data.new_york.tlc_yellow_trips_2014`
where (dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)
or (pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

union all

select 2013 as year, sum(passenger_count) as cnt
from `bigquery-public-data.new_york.tlc_yellow_trips_2013`
where (dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)
or (pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

union all

select 2012 as year, sum(passenger_count) as cnt
from `bigquery-public-data.new_york.tlc_yellow_trips_2012`
where (dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)
or (pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

union all

select 2011 as year, sum(passenger_count) as cnt
from `bigquery-public-data.new_york.tlc_yellow_trips_2011`
where (dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)
or (pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

union all

select 2010 as year, sum(passenger_count) as cnt
from `bigquery-public-data.new_york.tlc_yellow_trips_2010`
where (dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)
or (pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

union all

select 2009 as year, sum(passenger_count) as cnt
from `bigquery-public-data.new_york.tlc_yellow_trips_2009`
where (dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)
or (pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

)
order by year
)

union ALL
# green
(
select year, cnt, "green" as platform from
(
select 2016 as year, floor(count(*)*1.45) as cnt
from `bigquery-public-data.new_york.tlc_green_trips_2016`
where (dropoff_longitude is not null 
and dropoff_latitude is not null
and dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)
or
(pickup_longitude is not null 
and pickup_latitude is not null
and pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

union all

select 2015 as year, sum(passenger_count) as cnt
from `bigquery-public-data.new_york.tlc_green_trips_2015`
where (dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)
or (pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

union all

select 2014 as year, sum(passenger_count) as cnt
from `bigquery-public-data.new_york.tlc_green_trips_2014`
where (dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)
or (pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

union all

select 2013 as year, sum(passenger_count) as cnt
from `bigquery-public-data.new_york.tlc_green_trips_2013`
where (dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)
or (pickup_longitude between -73.922078531 and -73.635699469
and pickup_latitude between 40.5994989032 and 40.6799450968)

)
order by year
)

union ALL
# fhv
(
select year, cnt, "fhv" as platform from
(
select 2016 as year, count(*) as cnt
from `bigquery-public-data.new_york.tlc_fhv_trips_2016`
where zone = "JFK Airport"

union all

select 2015 as year, count(*) as cnt
from `bigquery-public-data.new_york.tlc_fhv_trips_2015`
where zone = "JFK Airport"

)
order by year
)
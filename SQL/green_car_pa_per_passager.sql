# green
# check the number of passenger per car from 2013 to 2015
# doing this because 2016 datasets has problems


select 2015 as year, sum(passenger_count)/count(*) as pa_per_car
from `bigquery-public-data.new_york.tlc_green_trips_2015`
where (dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)

union all

select 2014 as year, sum(passenger_count)/count(*) as pa_per_car
from `bigquery-public-data.new_york.tlc_green_trips_2014`
where (dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)

union all

select 2013 as year, sum(passenger_count)/count(*) as pa_per_car
from `bigquery-public-data.new_york.tlc_green_trips_2013`
where (dropoff_longitude between -73.922078531 and -73.635699469
and dropoff_latitude between 40.5994989032 and 40.6799450968)
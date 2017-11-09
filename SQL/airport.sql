# mysql
# jfk pickup
select year, cnt from
(
select 2016 as year, count(*) as cnt
from `bigquery-public-data.new_york.tlc_yellow_trips_2016`
where (pickup_longitude between -73.921289531 and -73.634910469
and pickup_latitude between 40.6010769032 and 40.6815230968)

union all

select 2015 as year, count(*) as cnt
from `bigquery-public-data.new_york.tlc_yellow_trips_2015`
where (pickup_longitude between -73.921289531 and -73.634910469
and pickup_latitude between 40.6010769032 and 40.6815230968)

union all

select 2014 as year, count(*) as cnt
from `bigquery-public-data.new_york.tlc_yellow_trips_2014`
where (pickup_longitude between -73.921289531 and -73.634910469
and pickup_latitude between 40.6010769032 and 40.6815230968)

union all

select 2013 as year, count(*) as cnt
from `bigquery-public-data.new_york.tlc_yellow_trips_2013`
where (pickup_longitude between -73.921289531 and -73.634910469
and pickup_latitude between 40.6010769032 and 40.6815230968)

union all

select 2012 as year, count(*) as cnt
from `bigquery-public-data.new_york.tlc_yellow_trips_2012`
where (pickup_longitude between -73.921289531 and -73.634910469
and pickup_latitude between 40.6010769032 and 40.6815230968)

union all

select 2011 as year, count(*) as cnt
from `bigquery-public-data.new_york.tlc_yellow_trips_2011`
where (pickup_longitude between -73.921289531 and -73.634910469
and pickup_latitude between 40.6010769032 and 40.6815230968)

union all

select 2010 as year, count(*) as cnt
from `bigquery-public-data.new_york.tlc_yellow_trips_2010`
where (pickup_longitude between -73.921289531 and -73.634910469
and pickup_latitude between 40.6010769032 and 40.6815230968)

union all

select 2009 as year, count(*) as cnt
from `bigquery-public-data.new_york.tlc_yellow_trips_2009`
where (pickup_longitude between -73.921289531 and -73.634910469
and pickup_latitude between 40.6010769032 and 40.6815230968)

)
order by year
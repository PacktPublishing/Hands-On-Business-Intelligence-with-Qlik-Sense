SELECT 
 TIMESTAMP_TRUNC(starttime, month) AS trip_month
 ,start_station_name
 ,end_station_name
 ,sum(tripduration) AS tripduration
 ,count(starttime) AS trips
FROM `bigquery-public-data.new_york.citibike_trips`
GROUP BY 
 TIMESTAMP_TRUNC(starttime, month)
 ,start_station_name
 ,end_station_name
 limit 100

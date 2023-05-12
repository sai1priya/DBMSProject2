SELECT place, latitude, longitiude, depth
FROM earthquakes_table
WHERE mag < 8.5 AND depth < 12;
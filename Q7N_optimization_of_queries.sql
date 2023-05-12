SELECT place, mag
FROM earthquakes_table
WHERE latitude > 30 AND longitiude < -100
  AND mag > 3.0
ORDER BY mag ASC
LIMIT 13;
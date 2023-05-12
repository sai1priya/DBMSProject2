CREATE INDEX idx_place ON earthquakes_table(place);	
SELECT place, COUNT(*) as num_earthquakes, AVG(mag) as avg_magnitude
FROM (
  SELECT *
  FROM earthquakes_table
  WHERE place IS NOT NULL
) AS filtered
GROUP BY place
HAVING COUNT(*) = 10
ORDER BY num_earthquakes DESC;
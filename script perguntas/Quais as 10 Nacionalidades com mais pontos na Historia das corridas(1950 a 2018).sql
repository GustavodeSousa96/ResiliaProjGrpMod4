-- Quais as 10 Nacionalidades com mais pontos na Historia das corridas(1950 a 2018)?

SELECT COUNT(driver_id) AS "Pilotos por país", drivers.nationality AS "Nacionalidade", SUM(results.points) AS "Soma pts na história"
FROM results
JOIN drivers
USING (driver_id)
GROUP BY (drivers.nationality)
ORDER BY SUM(results.points) DESC
LIMIT 10;

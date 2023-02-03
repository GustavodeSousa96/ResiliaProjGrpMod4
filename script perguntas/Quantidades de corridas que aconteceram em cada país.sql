-- Quantidades de corridas que aconteceram em cada país

SELECT COUNT(races.race_id) AS "Corridas", circuits.country AS "País"
FROM races
JOIN circuits
USING(circuit_id)
GROUP BY (country);

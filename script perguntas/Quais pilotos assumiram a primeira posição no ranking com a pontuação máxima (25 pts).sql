-- Quais pilotos assumiram a primeira posição no ranking com a pontuação máxima (25 pts)

SELECT rc.year AS "Ano", d.forename AS "Piloto" , c.name AS "Fabricante" , r.ranking, r.points AS "Pontos"
FROM results AS r
JOIN races AS rc
USING(race_id)
JOIN drivers AS d
USING(driver_id)
JOIN constructor AS c
USING(constructor_id)
WHERE ranking = 1 AND points = 25;
-- Qual é o nome dos brasileiros que obtiveram mais de 4 vitorias em uma corrida, qual o nome e o ano que essas corridas aconteceram.

SELECT d.forename AS "Nome", d.surname AS "Sobrenome", d.nationality AS "Nacionalidade", ds.wins AS "Vitorias", r.name AS "corrida", r.year AS "Ano"
FROM driver_standings AS ds
JOIN drivers AS d
USING(driver_id)
JOIN races AS r
USING(race_id)
WHERE d.nationality = "Brazilian" AND ds.wins BETWEEN 4 AND 10;
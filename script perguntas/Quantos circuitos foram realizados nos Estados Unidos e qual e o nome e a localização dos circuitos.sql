-- Quantos circuitos foram realizados nos Estados Unidos e qual e o nome e a localização dos circuitos

Select name AS "Nome" , location AS "Cidade" FROM circuits
WHERE country LIKE("%USA%");
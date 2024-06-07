#Exercicio1
SELECT * FROM livros WHERE disponivel = true;

#Exercicio2
SELECT * FROM livros WHERE editora = 'HarperCollins';

#Exercicio3
SELECT * FROM livros WHERE ano_publicacao BETWEEN 2000 AND 2010;

#Exercicio4
SELECT autor, COUNT(*) AS num_livros 
FROM livros 
GROUP BY autor 
HAVING COUNT(*) > 3;

#Exercicio5
SELECT * FROM livros WHERE titulo LIKE '%Senhor%';

#Exercicio6
SELECT * FROM livros WHERE categoria IN ('Fantasia', 'Ficção Científica', 'Fábula');

#Exercicio7
SELECT DISTINCT idioma FROM livros;

#Exercicio8
SELECT * FROM livros WHERE numero_paginas BETWEEN 200 E 400;

#Exercicio9
SELECT EXISTS(SELECT 1 FROM livros WHERE categoria = 'História') AS existe_historia;

#Exercicio10
SELECT titulo, ano_publicacao FROM livros ORDER BY ano_publicacao;

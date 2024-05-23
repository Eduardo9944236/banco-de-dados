use avaliacao_22a;
#EXERCICIO 1
insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria,isbn, editora, quantidade_paginas, idioma) VALUES
 ("As cronicas de Narnia","C.S Lewis", "1950", TRUE, "Fantasia", "978-0064471190", "HarperCollins", "762", "Ingles"), 
 ("As cronicas de Narnia","C.S Lewis", "1950", TRUE, "Fantasia", '978-0064471190', "HarperCollins", "762", "Ingles");

#EXERCICIO 2
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria,isbn, editora, quantidade_paginas, idioma) VALUES
 ("Cem Anos de Solidão", "Gabriel Garcia Marquez", 1967, TRUE, "Ficção", '978-0241968581', "Penguin Books", 422, "Espanhol"),
 ("Harry Potter e a Pedra Filosofal" , "J.K. Rowling", 1997, TRUE, "Fantasia", '978-0439708180', "Bloomsbury", 309, "Inglês"),
 ("O Senhor dos Anéis: A Sociedade do Anel", "J.R.R. Tolkien", 1954, TRUE, "Fantasia", '978-0618640157', "HarperCollins", 423, "Inglês");

#EXERCICIO 3
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria,isbn, editora, quantidade_paginas, idioma) VALUES
("O Ceifeiro Morto ", "Biguinho sensação", 2015, TRUE, "Historia e Ficção", '978-9403672840', "Books Horse", 780, "portugues");

#EXERCICIO 4
UPDATE Livros
SET disponivel = FALSE
WHERE disponivel <2000;

#EXERCICIO 5
UPDATE Livros
SET editora = 'Plume Books'
WHERE titulo = '1984';

#EXERCICIO 6
UPDATE Livros
SET idioma = ingles
WHERE editora = "Penguin Books";

#EXERCICIO 7
UPDATE Livros 
SET titulo = "Harry Potter e a Pedra Filosofal (Edição Especial)"
WHERE isbn =  '978-0439708180' ;

#EXERCICIO 8
DELETE FROM Livros WHERE categoria = 'Terror';

#EXERCICIO 9
DELETE FROM Livros WHERE editora = 'Penguin Books';

#EXERCICIO 10
DELETE FROM Livros WHERE idioma and ano_publicacao = 'Francês' < '1970';

#EXERCICIO 11
DELETE FROM Livros WHERE titulo = "As cronicas de Narnia";

#EXERCICIO 12
DELETE FROM Livros WHERE editora = "Penguin Books";

#EXERCICIO 13
SELECT * FROM Livros
WHERE quantidade_paginas > '500';

#EXERCICIO 14
SELECT categoria, count(*) AS quantidade_paginas 
FROM Livros 
GROUP BY categoria;

#EXERCICIO 15
SELECT* 
FROM Livros
LIMIT 5;

#EXERCICIO 16
SELECT sum(quantidade_paginas), avg(quantidade_paginas)
FROM Livros
WHERE categoria ='Drama';

#EXERCICIO 17
SELECT avg(ano_publicacao)
FROM Livros;

#EXERCICIO 18
SELECT MAX(ano_publicacao), MIN(ano_publicacao)
FROM Livros;

#EXERCICIO 19
SELECT*
FROM Livros
ORDER BY ano_publicacao DESC;

#EXERCICIO 20
SELECT titulos"Inglês"FROM Livros
UNION
SELECT titulos "Português" FROM Livros
ORDER BY titulo;

# EXERCICIO 21
SELECT*FROM Livros 
WHERE autor=( 'George Orwell');













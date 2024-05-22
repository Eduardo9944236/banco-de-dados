use avaliacao_22a;


insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria,isbn, editora, quantidade_paginas, idioma) VALUES
 ("As cronicas de Narnia","C.S Lewis", "1950", TRUE, "Fantasia", '978-0064471190', "HarperCollins", "762", "Ingles");
 
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria,isbn, editora, quantidade_paginas, idioma) VALUES
 ("Cem Anos de Solidão", "Gabriel Garcia Marquez", 1967, TRUE, "Ficção", '978-0241968581', "Penguin Books", 422, "Espanhol"),
 ("Harry Potter e a Pedra Filosofal" , "J.K. Rowling", 1997, TRUE, "Fantasia", '978-0439708180', "Bloomsbury", 309, "Inglês"),
 ("O Senhor dos Anéis: A Sociedade do Anel", "J.R.R. Tolkien", 1954, TRUE, "Fantasia", '978-0618640157', "HarperCollins", 423, "Inglês");
 
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria,isbn, editora, quantidade_paginas, idioma) VALUES
("O Ceifeiro Morto ", "Biguinho sensação", 2015, TRUE, "Historia e Ficção", '978-9403672840', "Books Horse", 780, "portugues");

UPDATE Livros
SET disponivel = FALSE
WHERE disponivel <2000;

UPDATE Livros
SET editora = 'Plume Books'
WHERE titulo = '1984';

UPDATE Livros
SET idioma = ingles
WHERE editora = "Penguin Books";

UPDATE Livros 
SET titulo = "Harry Potter e a Pedra Filosofal (Edição Especial)"
WHERE isbn =  '978-0439708180' ;

DELETE FROM Livros WHERE categoria = 'Terror';

DELETE FROM Livros WHERE editora = 'Penguin Books';

DELETE FROM Livros WHERE idioma and ano_publicacao = 'Francês' < '1970';

DELETE FROM Livros WHERE titulo = "As cronicas de Narnia";

DELETE FROM Livros WHERE editora = "Penguin Books";

SELECT * FROM Livros
WHERE quantidade_paginas > '500';

 
SELECT categoria, count(*) AS quantidade_paginas 
FROM Livros 
GROUP BY categoria;

SELECT* 
FROM Livros
LIMIT 5;

SELECT sum(quantidade_paginas), avg(quantidade_paginas)
FROM Livros
WHERE categoria ='Drama';

SELECT avg(ano_publicacao)
FROM Livros;

SELECT MAX(ano_publicacao), MIN(ano_publicacao)
FROM Livros;

SELECT*
FROM Livros
ORDER BY ano_publicacao DESC;














SELECT  MAX(ano_publicacao), MIN(ano_publicacao)
FROM Livros;

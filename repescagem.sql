#EXERCICIO 1

SELECT nome,especialidade
FROM Medicos;

#EXERCICIO 2
SELECT count(*) nome,salario
FROM Medicos;

#EXERCICIO 3
SELECT nome,email
From Medicos
ORDER BY nome,email ASC;


#EXERCICIO 4
SELECT nome,data_contratacao 
from medicos 
order by data_contratacao desc;

#EXERCICIO 5
SELECT nome,especialidade
from Medicos
order by especialidade = "Cirurgia";

#EXERCICIO 6
SELECT nome,data_contratacao
from medicos
group by data_contratacao > 2020;

#EXERCICIO 7
SELECT nome,horario_trabalho
from medicos
ORDER BY horario_trabalho <= "12:00-20:00","11:00-19:00";

#EXERCICIO 8
SELECT nome,telefone
from medicos
ORDER BY telefone;

#EXERCICIO 9
SELECT nome,especialidade
from Medicos
ORDER BY especialidade = "Cardiologia";

#EXERCICIO 10
SELECT nome, avg(salario)
from Medicos




 







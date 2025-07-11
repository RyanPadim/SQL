SELECT nome, PATINDEX('%D%', nome) FROM fornecedores;
-- RETORNA A POSIÇÃO ONDE O CARACTER SE ENCONTRA NA STRING (COMEÇO, MEIO, FIM)

SELECT nome, PATINDEX('C%', nome) from clientes;
-- RETORNA A POSIÇÃO ONDE O CARACTER SE ENCONTRA NA STRING (SOMENTE COMEÇO)


SELECT id_funcionario, id_cliente, REPLACE(data, '-', '/') as data from atendimentos;

SELECT id, replace(nome, 'Consumível', 'Comidaaaa') as nome FROM categorias;

SELECT REVERSE(nome) FROM clientes;

SELECT REVERSE(endereco) from fornecedores;

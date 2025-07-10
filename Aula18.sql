SELECT FORMAT(data, 'ddd') FROM pagamentos;

SELECT FORMAT(valor, 'C') FROM pagamentos;

SELECT FORMAT(data, 'MMMM') FROM pagamentos;

SELECT id, id_pedido, FORMAT(valor, 'c') as valor, format(data, 'dd/MMMM/yy') as mes
FROM pagamentos
ORDER BY mes;




SELECT id, LOWER(nome) as nome, LOWER(endereco) as endereco FROM clientes;




SELECT LTRIM('        TESTANDO A FUNÇÃO LTRIM NO SQL SERVER') as TESTE;

SELECT LTRIM(' OI TESTANDO') as TESTE2;

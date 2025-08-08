CREATE VIEW nome_cargo_funcionario AS
SELECT nome, cargo FROM funcionarios;


CREATE VIEW nome_cargo_funcionario AS
SELECT nome, cargo FROM funcion

SELECT * FROM nome_cargo_funcionario;

CREATE VIEW pagamentos_altos as
SELECT * FROM pagamentos WHERE valor > 5000;

SELECT * FROM pagamentos_altos;

CREATE VIEW pagamento_pedido_cliente AS
SELECT pag.id, cli.nome, pag.valor, pag.data
from pagamentos pag
INNER JOIN pedidos ped on ped.id = pag.id_pedido
INNER JOIN clientes cli on ped.id_cliente = cli.id;

SELECT * FROM pagamento_pedido_cliente;

ALTER VIEW pagamento_pedido_cliente AS
SELECT pag.id, cli.nome, cli.endereco, pag.valor, pag.data
FROM pagamentos pag
INNER JOIN pedidos ped ON ped.id = pag.id_pedido
INNER JOIN clientes cli on ped.id_cliente = cli.id;

SELECT * FROM Pagamento_pedido_cliente;

DROP VIEW Pagamento_pedido_cliente;
SELECT * FROM Pagamento_pedido_cliente;

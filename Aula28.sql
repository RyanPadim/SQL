WITH CTE_atendimento_avaliacao AS (
SELECT cli.nome AS nomeCli, fun.nome AS nomeFun, data, av.nota, av.comentario
FROM atendimentos at
INNER JOIN clientes cli ON at.id_cliente = cli.id
INNER JOIN funcionarios fun ON at.id_funcionario = fun.id
INNER JOIN avaliacoes av on av.id_atendimento = at.id)
SELECT * FROM CTE_atendimento_avaliacao WHERE nomeCli = 'Jescie Feitosa';
  
WITH CTE_clientes_pedidos AS (
SELECT c.*, p.id as idPedido, p.data FROM clientes c
INNER JOIN pedidos p on p.id_cliente = c.id)
SELECT * FROM CTE_clientes_pedidos;

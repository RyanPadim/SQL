SELECT id, concat('nome: ', nome, ', email: ', email) AS nome_Endereco
FROM clientes;

SELECT av.id, CONCAT('Funcionário: ', f.nome, ', Nota: ', av.nota, ', Comentário: ', av.comentario) as avaliacao, at.data
FROM avaliacoes av
INNER JOIN atendimentos at ON at.id = av.id_atendimento
INNER JOIN funcionarios f on at.id_funcionario = f.id;


SELECT concat_WS(', ', f.nome, av.nota, av.comentario) as avaliacao, at.data
from avaliacoes av
INNER join atendimentos at on at.id = av.id_atendimento
INNER JOIN funcionarios f ON at.id_funcionario = f.id;

SELECT concat(f.nome, ', ', av.nota, ', ', av.comentario) as avaliacao, at.data
from avaliacoes av
INNER JOIN atendimentos at on at.id = av.id_atendimento
INNER join funcionarios f on at.id_funcionario = f.id;

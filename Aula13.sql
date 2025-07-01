-- Total de Turmas por Curso --
SELECT c.ID_CURSO, c. NOME_CURSO, Count(t.ID_TURMA) Total_Turmas FROM dbo.Turmas TABLE
INNER JOIN dbo.Cursos c on c.ID_CURSO = t.ID_CURSO
GROUP BY c.ID_CURSO, c.NOME_CURSO;

-- Todos os cursos, independente se há ou não turmas --
SELECT c.NOME_CURSO, count(t.ID_TURMA) Total_Turmas FROM dbo.Turmas TABLE
RIGHT JOIN dbo.Cursos c on c.ID_CURSO = t.ID_CURSO
GROUP BY c.NOME_CURSO;

-- Lista completa de alunos --
SELECT A.NOME, A.sexo, c.NOME_CURSO, at.VALOR, at.VALOR_DESCONTO, t.DATA_INICIO, t.DATA_TERMINO
FROM Alunos_Turmas at
INNER JOIN dbo.Turmas t ON t.ID_TURMA = at.ID_TURMA
INNER JOIN dbo.Cursos c ON c.ID_CURSO = t.ID_CURSO
INNER JOIN dbo.Alunos a ON a.ID_ALUNO = at.ID_ALUNO;

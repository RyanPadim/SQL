SELECT * FROM dbo.Turmas;

SELECT * FROM Cursos;

SELECT Turmas.*, Cursos.* FROM Turmas, Cursos;

SELECT ID_TURMA, ID_CURSO, DATA_INICIO, DATA_TERMINO FROM Turmas;

SELECT ID_TURMA AS Turma, ID_CURSO AS Curso, DATA_INICIO AS Inicio, DATA_TERMINO AS Termino FROM Turmas;

SELECT NOME, SEXO FROM Alunos WHERE NOME = 'Ana Souza' OR NOME = 'Lucas Costa';

SELECT * FROM Cursos WHERE Cursos.NOME_CURSO = 'SQL Server';

SELECT NOME, SEXO FROM Alunos WHERE sexo !='M';

SELECT ID_TURMA, VALOR, LOGIN_CADASTRO FROM Alunos_Turmas AL WHERE AL.VALOR BETWEEN 0 and 5000;

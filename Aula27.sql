CREATE PROCEDURE InsertClientes (
@id INT,
@nome VARCHAR(255),
@endereco VARCHAR(255),
@telefone VARCHAR(20),
@email VARCHAR(255))
AS
BEGIN
INSERT INTO clientes (id, nome, endereco, telefone, email)
VALUES (@id, @nome, @endereco, @telefone, @email)
END


CREATE PROCEDURE GerenciarFuncionarios
(
@acao varchar(10),
@id INT = NULL,
@nome varchar(50) = NULL,
@cargo VARCHAR(50) = NULL
)
AS
BEGIN
IF @acao = 'INSERT'
BEGIN
INSERT INTO funcionarios (id, nome, cargo)
VALUES (@id, @nome, @cargo)
END
ELSE IF @acao = 'UPTADE'
BEGIN
UPDATE funcionarios
SET nome = @nome,
cargo = @cargo
WHERE id = @id
END
ELSE if @acao = 'DELETE'
BEGIN
DELETE FROM funcionarios
WHERE id = @id
END
END

EXEC GerenciarFuncionarios 'INSERT', 31, 'Giovani Tamanini', 'CEO';

EXEC GerenciarFuncionarios 'UPDATE', 31, 'Giovani', 'Gerente';

EXEC GerenciarFuncionarios 'DELETE', 31, NULL, NULL;

SELECT * FROM funcionarios WHERE id = 31;

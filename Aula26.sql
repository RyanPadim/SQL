CREATE TRIGGER tr_ins_fornecedores
ON fornecedores
AFTER INSERT
AS
BEGIN
DECLARE @nome varchar(50), @cnpj varchar(20), @telefone varchar(15), @endereco varchar(100)

SELECT @nome = nome, @cnpj = cnpj, @telefone = telefone, @endereco = endereco
FROM inserted

IF @nome is null or @cnpj is NULL OR @telefone IS NULL or @endereco is NULL
BEGIN
RAISERROR('Todos os campos são obrigatórios', 16, 1)
ROLLBACK TRANSACTION
END
END

DISABLE TRIGGER tr_ins_pagamentos on pagamentos;
GO
ALTER TRIGGER tr_ins_pagamentos
ON pagamentos
AFTER INSERT
AS
BEGIN
DECLARE @id_pedido int, @valor money, @data date

SELECT @id_pedido, @valor = valor, @data = DATABASE
FROM inserted

IF @valor < 0
BEGIN
RAISEERROR('O valor não pode ser negativo', 16, 1)
ROLLBACK TRANSACTION
END
END
GO

ENABLE TRIGGER tr_ins_pagamentos ON pagamentos;

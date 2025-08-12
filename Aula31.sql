CREATE DATABASE LojaDeRoupas;
GO

USE LojaDeRoupas;
GO

CREATE TABLE Categoria (
    CategoriaID INT PRIMARY KEY IDENTITY(1, 1)
  NomeCategoria VARCHAR(50) NOT NULL;

  CREATE TABLE Produto (
ProdutoID INT PRIMARY KEY IDENTITY(1, 1),
NomeProduto VARCHAR(100) NOT NULL,
Preco FLOAT NOT NULL,
Estoque INT NOT NULL,
CategoriaID INT NOT NULL,
CONSTRAINT FK_Produto_Categoria FOREIGN KEY (CategoriaID)
REFERENCES Categoria(CategoriaID));

CREATE TABLE Cliente (
ClienteID INT PRIMARY KEY IDENTITY(1, 1),
NomeCliente VARCHAR(100) NOT NULL,
Email VARCHAR(100) NOT NULL,
Telefone VARCHAR(15) NOT NULL

CREATE TABLE Venda (
VendaID INT PRIMARY KEY IDENTITY(1, 1),
DataVenda DATETIME NOT NULL,
ClienteID INT NOT NULL,
CONSTRAINT FK_Venda_Cliente FOREIGN KEY (ClienteID)
REFERENCES Cliente(ClienteID)

CREATE TABLE ItensVenda (
ItensVendaID INT PRIMARY KEY IDENTITY(1, 1),
VendaID INT NOT NULL,
ProdutoID INT NOT NULL,
Quantidade INT NOT NULL,
CONSTRAINT FK_ItensVenda_Venda FOREIGN KEY (VendaID)
REFERENCES Venda(VendaID),
CONSTRAINT FK_ItensVenda_Produto FOREIGN KEY (ProdutoID)
REFERENCES Produto(ProdutoID)





CREATE PROCEDURE AdicionarCliente (@NomeCliente VARCHAR(100), @Email VARCHAR(100), @Telefone VARCHAR(15))
AS
BEGIN
    INSERT INTO Cliente (NomeCliente, Email, Telefone)
    VALUES (@NomeCliente, @Email, @Telefone);
END;



CREATE PROCEDURE AdicionarProduto (@NomeProduto VARCHAR(100), @Preco FLOAT, @Estoque INT, @CategoriaID INT)
AS
BEGIN
INSERT INTO Produto (NomeProduto, Preco, Estoque, CategoriaID)
VALUES (@NomeProduto, @Preco, @Estoque, @CategoriaID);
END;

CREATE PROCEDURE AdicionarCategoria
    @NomeCategoria VARCHAR(50)
AS
BEGIN
INSERT INTO Categoria (NomeCategoria)
VALUES (@NomeCategoria)
END;

CREATE PROCEDURE AdicionarVenda (@DataVenda DATETIME, @ClientelD INT)  
AS  
BEGIN  
DECLARE @VendaID INT  

INSERT INTO Venda (DataVenda, ClienteID)  
VALUES (@DataVenda, @ClienteID)  

SET @VendaID = SCOPE_IDENTITY()  

RETURN @VendaID  
END; 

CREATE PROCEDURE AdicionarItensVenda (@VendaID INT, @ProdutoID INT, @Quantidade INT)
AS
BEGIN
DECLARE @EstoqueAtual INT

SELECT @EstoqueAtual = Estoque FROM Produto
WHERE ProdutoID = @ProdutoID

IF (@EstoqueAtual >= @Quantidade)
BEGIN
    INSERT INTO ItensVenda (VendaID, ProdutoID, Quantidade)
    VALUES (@VendaID, @ProdutoID, @Quantidade)
    
    UPDATE Produto
    SET Estoque = Estoque - @Quantidade
    WHERE ProdutoID = @ProdutoID
END
ELSE
BEGIN
    RAISERROR ('Estoque insuficiente', 16, 1)
END
END


CREATE TRIGGER AtualizarEstoqueProduto ON Produto
AFTER INSERT, UPDATE
AS
BEGIN
DECLARE @Quantidade INT, @ProdutoID INT

SELECT @Quantidade = Estoque, @ProdutoID = ProdutoID
FROM inserted

UPDATE Produto SET Estoque = Estoque + @Quantidade
WHERE ProdutoID = @ProdutoID
END;




ALTER TABLE Venda aDD ValorVenda FLOAT NOT NULL;

CREATE VIEW VendasDoDia AS
SELECT VendaID, ClienteID, DataVenda, ValorVenda
FROM Venda
WHERE DataVenda >= CONVERT(DATE, GETDATE());



CREATE VIEW ItensVendaPorVendaID AS
SELECT ItensVenda.VendaID, Produto.NomeProduto, ItensVenda.Quantidade, Venda.ValorVenda
FROM ItensVenda
INNER JOIN Produto ON ItensVenda.ProdutoID = Produto.ProdutoID
INNER JOIN Venda ON Venda.VendaID = ItensVenda.VendaID;

CREATE VIEW ProdutosEmEstoque AS
SELECT ProdutoID, NomeProduto, Preco, Estoque
FROM Produto
WHERE Estoque > 0;

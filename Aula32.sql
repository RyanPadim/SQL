CREATE FUNCTION ObterDataAtual ()
RETURNS DATE
AS
BEGIN
    RETURN CONVERT(DATE, GETDATE());
END;

CREATE FUNCTION ObterPrecoMedioProdutos ()
RETURNS FLOAT AS BEGIN
    DECLARE @PrecoMedio FLOAT;
    SELECT @PrecoMedio = AVG(Preco) FROM Produto;
    RETURN @PrecoMedio;
END;

CREATE FUNCTION ObterEstoqueTotalProduto (@ProdutoID INT)
RETURNS FLOAT AS BEGIN
    DECLARE @EstoqueTotal INT;
    SELECT @EstoqueTotal = SUM(Estoque) FROM Produto WHERE ProdutoID = @ProdutoID;
    WHERE ProdutoID = @ProdutoID;
    RETURN @EstoqueTotal;
END;

EXEC AdicionarCategoria 'Blusa';
EXEC AdicionarCategoria 'Camiseta';
EXEC AdicionarCategoria 'Camisa';
EXEC AdicionarCategoria 'Regata';
EXEC AdicionarCategoria 'Calça';
EXEC AdicionarCategoria 'Short';
EXEC AdicionarCategoria 'Bermuda';
EXEC AdicionarCategoria 'Boné';
EXEC AdicionarCategoria 'Chapéu';
EXEC AdicionarCategoria 'Meia';
EXEC AdicionarCategoria 'Cueca';
EXEC AdicionarCategoria 'Calcinha';
EXEC AdicionarCategoria 'Sutiã';
EXEC AdicionarCategoria 'Vestido';
EXEC AdicionarCategoria 'Macacão';
EXEC AdicionarCategoria 'Macaquinho';

EXEC AdicionarCliente 'Giovani', 'giovani@hotmail.com', '99 99999-9999';
EXEC AdicionarCliente 'João', 'joao@hotmail.com', '99 99999-9999';
EXEC AdicionarCliente 'Maria', 'maria@hotmail.com', '99 99999-9999';
EXEC AdicionarCliente 'Robert', 'robert@hotmail.com', '99 99999-9999';
EXEC AdicionarCliente 'Flávio', 'flavio@hotmail.com', '99 99999-9999';
EXEC AdicionarCliente 'Ariano', 'ariano@hotmail.com', '99 99999-9999';
EXEC AdicionarCliente 'Rita', 'rita@hotmail.com', '99 99999-9999';
EXEC AdicionarCliente 'José', 'jose@hotmail.com', '99 99999-9999';
EXEC AdicionarCliente 'Magda', 'magda@hotmail.com', '99 99999-9999';
EXEC AdicionarCliente 'Jorel', 'jorel@hotmail.com', '99 99999-9999';

EXEC AdicionarProduto 'Boné Aba Reta', 25.00, 30, 8;
EXEC AdicionarProduto 'Camiseta Lisa', 79.90, 30, 2;
EXEC AdicionarProduto 'Camiseta Estampada', 79.90, 30, 2;
EXEC AdicionarProduto 'Calça Jeans', 109.90, 30, 5;
EXEC AdicionarProduto 'Calça Social', 199.90, 30, 5;
EXEC AdicionarProduto 'Short Moletom', 45.00, 30, 6;
EXEC AdicionarProduto 'Vestido Estampado', 84.90, 30, 14;
EXEC AdicionarProduto 'Macacão Estampado', 150.00, 30, 15;
EXEC AdicionarProduto 'Meia cano baixo', 10.00, 30, 10;
EXEC AdicionarProduto 'Meia cano alto', 15.00, 30, 10;
EXEC AdicionarProduto 'Chapéu Cowboy', 99.00, 30, 9;
EXEC AdicionarProduto 'Cueca Box', 25.00, 30, 11;

ALTER PROCEDURE [dbo].[AdicionarVenda]
    @DataVenda DATETIME,
    @ClienteID INT,
    @ValorVenda FLOAT
AS
BEGIN
    DECLARE @VendaID INT;

    INSERT INTO Venda (DataVenda, ClienteID, ValorVenda)
    VALUES (@DataVenda, @ClienteID, @ValorVenda);

    SET @VendaID = SCOPE_IDENTITY();

    RETURN @VendaID;
END;

EXEC AdicionarVenda '01-01-2023', 4, 109.9;
EXEC AdicionarVenda '02-01-2030', 4, 84.9;
EXEC AdicionarVenda '01-01-2030', 7, 25;
EXEC AdicionarVenda '03-01-2030', 5, 10;
EXEC AdicionarVenda '01-01-2030', 5, 15;
EXEC AdicionarVenda '04-01-2030', 1, 15;
EXEC AdicionarVenda '06-01-2030', 4, 45;
EXEC AdicionarVenda '03-01-2030', 6, 84.9;
EXEC AdicionarVenda '03-01-2030', 4, 109.9;
EXEC AdicionarVenda '04-01-2030', 4, 45;
EXEC AdicionarVenda '03-01-2030', 3, 150;
EXEC AdicionarVenda '03-01-2030', 3, 15;
EXEC AdicionarVenda '04-01-2030', 4, 10;
EXEC AdicionarVenda '04-01-2030', 1, 25;
EXEC AdicionarVenda '03-01-2030', 4, 84.9;
EXEC AdicionarVenda '01-01-2030', 4, 109.9;
EXEC AdicionarVenda '03-01-2030', 2, 15;
EXEC AdicionarVenda '04-01-2030', 4, 25;
EXEC AdicionarVenda '03-01-2030', 4, 25;
EXEC AdicionarVenda '03-01-2030', 6, 84.9;
EXEC AdicionarVenda '04-01-2030', 4, 109.9;
EXEC AdicionarVenda '03-01-2030', 4, 109.9;
EXEC AdicionarVenda '04-01-2030', 4, 25;
EXEC AdicionarVenda '04-01-2030', 5, 10;
EXEC AdicionarVenda '04-01-2030', 6, 15;
EXEC AdicionarVenda '04-01-2030', 6, 84.9;
EXEC AdicionarVenda '04-01-2030', 4, 109.9;

EXEC AdicionarItensVenda 1, 2, 5;
EXEC AdicionarItensVenda 4, 3, 3;
EXEC AdicionarItensVenda 6, 1, 6;
EXEC AdicionarItensVenda 1, 7, 5;
EXEC AdicionarItensVenda 2, 5, 7;
EXEC AdicionarItensVenda 4, 1, 4;
EXEC AdicionarItensVenda 5, 4, 8;
EXEC AdicionarItensVenda 6, 3, 6;
EXEC AdicionarItensVenda 8, 11, 2;
EXEC AdicionarItensVenda 9, 14, 1;

SELECT * FROM ItensVendaPorVendaID;

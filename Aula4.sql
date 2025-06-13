USE Primeiro_Banco
CREATE TABLE Tipos dados (
Codigo BIGINT PRIMARY KEY IDENTITY(1,1) NOT NULL,
ESTOQUE INT NOT NULL,
Vendas BIGINT NOT NULL,
Num_Residencia SMALLINT NOT NULL,
Idade TINYINT NOT NULL,
Faturamento DECIMAL NOT NULL,
Valor_Produto FLOAT NOT NULL)

INSERT INTO dbo.Tipos_dados
(Codigo, ESTOQUE, Vendas, Num_Residencia, Idade, Faturamento, Valor_Produto)
VALUES
(1, 1024000, 42010440052, 1540, 40, 2050125042141.501, 1504.50)

SELECT * FROM dbo.Tipos_dados

CREATE TABLE Tipo_date (
  codigo INT, 
  aniversario DATE
);

INSERT INTO Tipo_date (codigo, aniversario) VALUES (1, '2001-11-23');

SELECT * FROM Tipo_date

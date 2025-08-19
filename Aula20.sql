CREATE SEQUENCE codigoBarraSequence
START WITH 100000
INCREMENT BY 1;

CREATE TABLE inventario (
ItemID INT PRIMARY KEY,
ItemNome VARCHAR(50),
CodigoDeBarra INT DEFAULT(NEXT VALUE FOR codigoBarraSequence));

INSERT INTO inventario (ItemID, ItemNome)
VALUES (1, 'Notebook'), (2, 'Mouse'), (3, 'Teclado');

SELECT * FROM inventario;




CREATE SEQUENCE IDProjetoSequence2022
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE IDProjetoSequence2023
START WITH 100
INCREMENT BY 1;

CREATE TABLE projetos (
ProjetosID INT,
ProjetosAno INT,
ProjetosNome VARCHAR(50),
Data DATETIME);

INSERT INTO projetos (ProjetosID, ProjetosAno, ProjetosNome, Data)
VALUES (NEXT VALUE FOR IDProjetoSequence2022, 2022, 'Projeto A', '2022-01-01'),
(NEXT VALUE FOR IDProjetoSequence2023, 2023, 'Projeto B', '2023-01-01');

CREATE SEQUENCE NorteIDSequence
START WITH 1
INCREMENT BY 1;

CREATE SEQUENCE SulIDSequence
START WITH 1000
INCREMENT BY 1;

CREATE TABLE orders (
PedidoID INT,
Regiao VARCHAR(50),
PedidoData DATETIME,
Total DECIMAL(18,2));

INSERT INTO orders (PedidoID, Regiao, PedidoData, Total)
VALUES (NEXT VALUE FOR NorteIDSequence, 'Norte', GETDATE(), 100.00),
(NEXT VALUE FOR SulIDSequence, 'Sul', GETDATE(), 200.00);

SELECT * FROM orders;
SELECT * FROM projetos;

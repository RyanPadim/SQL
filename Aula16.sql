SELECT * FROM dbo.pagamentos WHERE pagamentos.data < GETDATE() - 200;

SELECT DATEDIFF(DAY, data, GETDATE()) as Diferenca_Dias
FROM pagamentos ORDER BY data;

SELECT DATEDIFF(DAY, data, GETDATE()) as Diferenca_Dias
FROM pagamentos WHERE id = 22
ORDER BY data;

SELECT *, DATEaDD(day, 5, data) Data_Prev_Entrega FROM compras;

SELECT ic.id, ic.preco, ic.quantidade, f.nome, DATEPART(YEAR, c.data) as ano_compra
FROM itens_compra ic
INNER JOIN compras c ON c.id = ic.id_compra
INNER JOIN fornecedores f on f.id = c.id_fornecedor;

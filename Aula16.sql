SELECT * FROM dbo.pagamentos WHERE pagamentos.data < GETDATE() - 200;

SELECT DATEDIFF(DAY, data, GETDATE()) as Diferenca_Dias
FROM pagamentos ORDER BY data;

SELECT DATEDIFF(DAY, data, GETDATE()) as Diferenca_Dias
FROM pagamentos WHERE id = 22
ORDER BY data;

SELECT *, DATEaDD(day, 5, data) Data_Prev_Entrega FROM compras;

DECLARE @nota INT;
SET @nota = 7;

IF (@nota = 7)
BEGIN
	UPDATE avaliacoes
	SET comentario = 'BOM'
	WHERE nota = 7;
END

SELECT * FROM avaliacoes ORDER BY nota;

DECLARE @comentario VARCHAR;
SET @comentario = 'Ruim';

IF @comentario != 'Bom'
BEGIN
	Print 'O atendimento foi ruim!';
END



DECLARE @nota INT;
SET @nota = 8;

IF @nota >= 9
BEGIN
print 'Atendimento excelente!';
End



SELECT nota, comentario,
CASE
when nota BETWEEN 6 and 10 THEN 'Bom atendimento'
WHEN nota BETWEEN 1 and 5 THEN 'Mal atendimento'
END as Classificacao
FROM avaliacoes;



DECLARE @contador INT = 1
DECLARE @soma INT = 0

WHILE (@contador <= 100)
BEGIN
IF (@contador % 2 <> 0)
BEGIN
SET @soma = @soma + @contador
END

SET @contador = @contador + 1
END

PRINT 'A soma dos números ímpares entre 1 e 100 é: ' + CAST(@soma as VARCHAR)

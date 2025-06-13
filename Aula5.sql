CREATE TABLE imagens(
  id integer,
  name varchar(100),
  data varbinary(max))
  
  declare @imagem varbinary(max)
  
  set @imagem = (SELECT * FROm openrowset(bulk 'C:\users\Suporte1\Pictures\image.jpg', single_blob) as img)
  
  INSERT into imagens (id, name, data) values (1, 'image.jpg', @imagem)

  SELECT * FROM dbo.imagens

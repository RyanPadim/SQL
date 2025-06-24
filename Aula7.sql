USE Primeiro_Banco
CREATE TABLE clientes (
  id INT PRIMARY KEY,
  nome Varchar(50) NOT NULL,
  endereço VARCHAR(100) NOT NULL,
  telefone VARCHAR(15) NOT NULL);
  
  INSERT INTO clientes (id, nome, endereço, telefone) VALUES (1, 'João Silva', 'Avenida Peixoto, 123', '11 1234-5678');
  
  INSERT INTO clientes (id, nome, endereço) VALUES (2, 'Maria Silva', 'Rua das Rosas, 456');

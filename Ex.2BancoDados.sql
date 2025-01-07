CREATE DATABASE db_loja;

USE db_loja;

CREATE TABLE tb_produto (
id BIGINT AUTO_INCREMENT, 
produto VARCHAR (255) NOT NULL,
marca VARCHAR (255) NOT NULL,
tamanho INT,
quantidade INT,
valor DECIMAL (5,2),
PRIMARY KEY (id) 
);

   INSERT INTO tb_produto(produto, marca, tamanho, quantidade, valor)
   VALUES ("Tênis"," Nike", 37, 19, 600.00);
   
   INSERT INTO tb_produto(produto, marca, tamanho, quantidade, valor)
   VALUES ("Tênis"," Nike", 40, 23, 600.00);
   
     INSERT INTO tb_produto(produto, marca, tamanho, quantidade, valor)
   VALUES ("Tênis"," Nike", 42, 13, 600.00);
   
     INSERT INTO tb_produto(produto, marca, tamanho, quantidade, valor)
   VALUES ("Tênis", "Puma", 38, 11, 400.00);
   
     INSERT INTO tb_produto(produto, marca, tamanho, quantidade, valor)
   VALUES ("Tênis", "Puma", 42, 12, 400.00);
   
     INSERT INTO tb_produto(produto, marca, tamanho, quantidade, valor)
   VALUES ("Tênis", "Puma", 44, 19, 400.00);
   
     INSERT INTO tb_produto(produto, marca, tamanho, quantidade, valor)
   VALUES ("Tênis", "Vans", 36, 18, 340.00);
   
     INSERT INTO tb_produto(produto, marca, tamanho, quantidade, valor)
   VALUES ("Tênis", "Vans", 37, 21, 340.00);
   
     INSERT INTO tb_produto(produto, marca, tamanho, quantidade, valor)
   VALUES ("Tênis", "Vans", 37, 19, 340.00);
   
    SELECT * FROM tb_produto;
   
   SELECT * FROM tb_produto WHERE valor < 500;
   
   SELECT * FROM tb_produto WHERE valor > 500;
   
   UPDATE tb_produto SET valor = 430.00 WHERE id = 6;
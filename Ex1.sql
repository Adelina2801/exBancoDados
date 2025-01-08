CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR (255) NOT NULL
  );
    
    CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT,
    tamanho VARCHAR (15) NOT NULL,
    sabor VARCHAR (50) NOT NULL,
    adicionais VARCHAR (10),
    valor DECIMAL (5,2),
    PRIMARY KEY (id),
    categoriaid bigint,
	FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
    );
    
   INSERT INTO tb_categorias (descricao)
   VALUES ("Doce");
   
   INSERT INTO tb_categorias (descricao)
   VALUES ("Salgada");

   
   
   INSERT INTO tb_pizzas(tamanho, sabor, adicionais, valor, categoriaid) 
 values ("Inteira", "Mussarela", "Sem Borda", 45.00, 2); 
 
 INSERT INTO tb_pizzas(tamanho, sabor, adicionais, valor, categoriaid) 
 values ("Inteira", "Atum", "Com Borda", 58.00, 2);
 
 INSERT INTO tb_pizzas(tamanho, sabor, adicionais, valor, categoriaid) 
 values ("Inteira", "Philadelfia", "Com Borda", 103.00, 2); 
 
 INSERT INTO tb_pizzas(tamanho, sabor, adicionais, valor, categoriaid) 
 values ("Inteira", "Sensação", "Sem Borda", 80.00, 1); 
 
 INSERT INTO tb_pizzas(tamanho, sabor, adicionais, valor, categoriaid) 
 values ("Broto", "Portuguesa", "Sem Borda", 35.00, 2); 
 
 INSERT INTO tb_pizzas(tamanho, sabor, adicionais, valor, categoriaid) 
 values ("Broto", "Prestigio", "Sem Borda", 80.00, 1); 
 
 INSERT INTO tb_pizzas(tamanho, sabor, adicionais, valor, categoriaid) 
 values ("Inteira", "Moda Francesa", "Sem Borda", 120.00, 2); 
 
 SELECT * FROM tb_pizzas;
 
 SELECT * FROM tb_pizzas WHERE valor > 45.00;
 
 SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;
 
 SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";
 
 SELECT tamanho, sabor, adicionais, valor, tb_categorias.descricao
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id;


 SELECT tamanho, sabor, adicionais, valor, tb_categorias.descricao
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoriaid = tb_categorias.id WHERE tb_categorias.descricao LIKE "%Doce%";

 
    
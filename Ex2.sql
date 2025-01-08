CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR (255) NOT NULL
  );
    
    CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
    produto VARCHAR (50) NOT NULL,
    marca VARCHAR (20),
    datavalidade DATE,
    valor DECIMAL (4,2),
    PRIMARY KEY (id),
    categoriaid BIGINT,
	FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id)
    );
    
    INSERT INTO tb_categorias (descricao)
   VALUES ("Medicamento");
   
   INSERT INTO tb_categorias (descricao)
   VALUES ("Cosmético");
   
      INSERT INTO tb_categorias (descricao)
   VALUES ("Alimentício");
   
      INSERT INTO tb_categorias (descricao)
   VALUES ("Higiene");
   
   
   
    INSERT INTO tb_produtos(produto, marca, datavalidade, valor, categoriaid) 
 values ("Protetor solar", "Epsol", "2026-12-12", 96.00, 2); 
 
  INSERT INTO tb_produtos(produto, marca, datavalidade, valor, categoriaid) 
 values ("Chiclete", "Tridente", "2025-09-12", 5.00, 3); 
 
  INSERT INTO tb_produtos(produto, marca, datavalidade, valor, categoriaid) 
 values ("Dipirona", "Medley", "2026-06-12", 18.00, 1);
 
  INSERT INTO tb_produtos(produto, marca, datavalidade, valor, categoriaid) 
 values ("Lenço umidecido", "Pampers", "2025-12-01", 19.00, 4);
 
  INSERT INTO tb_produtos(produto, marca, datavalidade, valor, categoriaid) 
 values ("Leite formula", "Aptamil", "2026-01-01", 55.00, 3);
 
  INSERT INTO tb_produtos(produto, marca, datavalidade, valor, categoriaid) 
 values ("Fralda", "Pom Pom", "2026-07-01", 35.00, 4); 
 
  INSERT INTO tb_produtos(produto, marca, datavalidade, valor, categoriaid) 
 values ("Omeprazol", "Medley", "2026-12-01", 45.00, 1);
 
  INSERT INTO tb_produtos(produto, marca, datavalidade, valor, categoriaid) 
 values ("Creme dental", "Colgate", "2026-02-01", 11.99, 4); 
 
 
  SELECT * FROM tb_produtos WHERE valor > 50.00;
 
  SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;
  
  SELECT * FROM tb_produtos WHERE produto LIKE "%C%";
  
   SELECT produto, marca, datavalidade, valor, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;

 SELECT  produto, marca, datavalidade, valor, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id WHERE tb_categorias.descricao LIKE "%Cosmético%";
  
  


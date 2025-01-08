CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores (
 id BIGINT AUTO_INCREMENT, 
   nome VARCHAR (255) NOT NULL,
   datanascimento DATE,
   CPF VARCHAR(11),
   cargo VARCHAR (255) NOT NULL,
   salario DECIMAL,
   PRIMARY KEY (id) 
   );
   
   INSERT INTO tb_colaboradores(nome, datanascimento, CPF, cargo, salario)
   VALUES ("Jonas", "1987-09-15", "98798798798", "Aux. de Escritório", 1800.00);
   
   INSERT INTO tb_colaboradores(nome, datanascimento, CPF, cargo, salario)
   VALUES ("Alessandra", "1989-09-05", "34534534543", "Aux. Administrativo", 2000.00);
   
   INSERT INTO tb_colaboradores(nome, datanascimento, CPF, cargo, salario)
   VALUES ("Luan de Brito", "1996-04-25", "87687687676", "Vendedor", 4000.00);
   
   INSERT INTO tb_colaboradores(nome, datanascimento, CPF, cargo, salario)
   VALUES ("Miriam Simões", "1985-01-05", "12312312312", "Analista Contábil", 5000.00);
   
   INSERT INTO tb_colaboradores(nome, datanascimento, CPF, cargo, salario)
   VALUES ("Pedro de Oliveira", "1983-06-09", "56756756756", "Coordenador de Vendas", 11000.00);
   
   INSERT INTO tb_colaboradores(nome, datanascimento, CPF, cargo, salario)
   VALUES ("Ivo Santos", "1981-09-05", "67867867867", "Diretor Financeiro", 16000.00);
   
   SELECT * FROM tb_colaboradores;
   
   SELECT * FROM tb_colaboradores WHERE salario < 2000;
   
   SELECT * FROM tb_colaboradores WHERE salario > 2000;
   
   UPDATE tb_colaboradores SET salario = 4000.00 WHERE id = 2;
   
   ALTER TABLE tb_colaboradores MODIFY salario DECIMAL (7,2); 
   
   ALTER TABLE tb_colaboradores MODIFY CPF VARCHAR(11); 
    
   

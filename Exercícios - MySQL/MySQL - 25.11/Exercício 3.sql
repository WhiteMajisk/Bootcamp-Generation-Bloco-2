Create database db_escola;

Use db_escola;

Create Table tb_estudantes(
id_estudante bigint (5) auto_increment,
nome varchar (20) not null,
idade int (2),
endereco varchar (40) not null,
notaFinal int (2),
Primary Key (id_estudante)
);

Select * into tb_estudantes;

Insert into tb_estudantes (nome, idade, endereco, notaFinal) Value ("Roberto Gomes Floresta " , 14 , "Rua Antorio Roberto de Almeida, 110 " , 7);
Insert into tb_estudantes (nome, idade, endereco, notaFinal) Value ("Vinicius Rubio " , 13 , "Rua Augusto Correa Leite, 156 " , 8);
Insert into tb_estudantes (nome, idade, endereco, notaFinal) Value ("José Gregorio Cavalcante Mendonça " , 12 , "Avenida Voluntarios da Patria, 4563 " , 6);
Insert into tb_estudantes (nome, idade, endereco, notaFinal) Value ("Isabel Paschoalloto Ramos " , 16 , "Rua das Macieiras, 77" , 5);
Insert into tb_estudantes (nome, idade, endereco, notaFinal) Value ("Francisco de Paula Martins " , 14 , "Rua Treze de Novembro, 653 " , 4);
Insert into tb_estudantes (nome, idade, endereco, notaFinal) Value ("Luiz Ricardo de Souza " , 9 , "Avenida Brasil, 23 " , 5);
Insert into tb_estudantes (nome, idade, endereco, notaFinal) Value ("Eliseu de Aguiar Carvalho " , 11 , "Rua Presidente Kennedy, 193 " , 9);
Insert into tb_estudantes (nome, idade, endereco, notaFinal) Value ("Lucas da Silva Oliveira " , 18 , "Avenida Guarulhos, 6345 " , 9);

Select * into tb_estudantes;

Select * into tb_estudantes where notaFinal > 7;

Select * into tb_estudantes where notaFinal < 7;

Update tb_estudantes Set notaFinal = 6 where id_estudante = 5;
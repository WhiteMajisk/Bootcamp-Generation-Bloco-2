create database db_drogaria_farmais;
	
use db_drogaria_farmais;
     
     create table tb_categoria (
		id bigint auto_increment,
        
        receita boolean not null,
        tipo_produto varchar (255) not null,
        idade_alvo varchar (255) not null,
        
        primary key (id)
     );     
     select * from tb_categoria;
     
    insert into tb_categoria (receita, tipo_produto, idade_alvo) values (true, "Medicamento Controlado ","Adulto ");
	insert into tb_categoria (receita, tipo_produto, idade_alvo) values (true, "Medicamento Controlado ","Infantil ");
	insert into tb_categoria (receita, tipo_produto, idade_alvo) values (false, "Cosméticos ","Adulto "); 
	insert into tb_categoria (receita, tipo_produto, idade_alvo) values (false, "Cosméticos ","Adulto ");
	insert into tb_categoria (receita, tipo_produto, idade_alvo) values (false, "Higiene Pessoal ","Adulto ");
	insert into tb_categoria (receita, tipo_produto, idade_alvo) values (false, "Higiene Pessoal ","Infantil ");
     
      create table tb_produto (		
		id bigint auto_increment,
        
        nome varchar (255) not null,
        preco decimal (8,2) not null,
        qtd_estoque int not null,
        data_validade date,
        categoria_id bigint,
        
        primary key (id),
		foreign key (categoria_id) REFERENCES tb_categoria (id)        
     );
     
     select *from tb_produto;
     
	insert into tb_produto (nome, preco, qtd_estoque, data_validade, categoria_id) values ("Acetato de Trembolona ",500.99 ,25 ,"2024-08-01 ",1);
	insert into tb_produto (nome, preco, qtd_estoque, data_validade, categoria_id) values ("Deposteron ",290.99 ,15 ,"2025-11-25 ",1);
	insert into tb_produto (nome, preco, qtd_estoque, data_validade, categoria_id) values ("Vick 44E ",18.90 ,70 ,"2023-10-20",2);
	insert into tb_produto (nome, preco, qtd_estoque, data_validade, categoria_id) values ("Grecin 5 ",29.90 ,110 ,"2021-12-01",3);
	insert into tb_produto (nome, preco, qtd_estoque, data_validade, categoria_id) values ("Hemogenin ",370.50 ,15 ,"2022-12-05 ",4);
	insert into tb_produto (nome, preco, qtd_estoque, data_validade, categoria_id) values ("Axeron Testosterona em Gel ",212.50 ,5 ,"2023-12-14 ",6);
	insert into tb_produto (nome, preco, qtd_estoque, data_validade, categoria_id) values ("Bepantriz ",9.80 ,190 ,"2022-01-26 ",5);
	insert into tb_produto (nome, preco, qtd_estoque, data_validade, categoria_id) values ("Fralda Turma da Mônica Huggies ",59.90 ,400 ,"2024-10-25 ",6);
    
    select * from tb_produto where preco > 50;
    
    select * from tb_produto where preco between 3 and 60;
    
    select * from tb_produto where nome like "%b%";
    
	select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

    select tb_produto.nome, tb_categoria.tipo_produto, tb_categoria.receita, tb_categoria.idade_alvo, tb_produto.preco
    from tb_produto inner join tb_categoria
    on tb_categoria.id = tb_produto.categoria_id;
    
    select * from tb_produto where categoria_id in(1,2);
create database db_construvida;
use db_construvida;
     
     create table tb_categoria (
		id bigint auto_increment,
        
        promocao boolean not null, 
        desconto varchar (255) not null,
        tipo_produto varchar (255) not null,
               
        primary key (id)
     );     
     select * from tb_categoria;
     
    insert into tb_categoria (promocao, desconto, tipo_produto) values (true, "15% ", "Ensumos de Construção ");
	insert into tb_categoria (promocao, desconto, tipo_produto) values (false, "3% ", "Ferramentas de Jardinagem "); 
	insert into tb_categoria (promocao, desconto, tipo_produto) values (true, "48% ", "Decoração de interiores ");
	insert into tb_categoria (promocao, desconto, tipo_produto) values (false, "8% ", "Tintas ");
    insert into tb_categoria (promocao, desconto, tipo_produto) values (true, "25% ", "Ensumos Hidraulicos ");
	insert into tb_categoria (promocao, desconto, tipo_produto) values (true, "32% ", "Paisagismo "); 
  
     create table tb_produto (		
		id bigint auto_increment,
        
        nome varchar (255) not null,
        preco decimal (8,2) not null,
        estoque_produto int not null,
        data_validade date,
        categoria_id bigint,
        
        primary key (id),
		foreign key (categoria_id) REFERENCES tb_categoria (id)        
     );
     
	select *from tb_produto;
     
	insert into tb_produto (nome, preco, estoque_produto, data_validade, categoria_id) values ("Cimento Votoran ",26.50 ,315 ,"2024-10-25",1);
	insert into tb_produto (nome, preco, estoque_produto, data_validade, categoria_id) values ("Telhas ",6.50,255,"2025-12-30",1);
	insert into tb_produto (nome, preco, estoque_produto, data_validade, categoria_id) values ("Pá ",18.90,255,"2025-10-12",1);
	insert into tb_produto (nome, preco, estoque_produto, data_validade, categoria_id) values ("Vaso Swarovski ",6.990 ,19 ,"2024-11-25",3);
	insert into tb_produto (nome, preco, estoque_produto, data_validade, categoria_id) values ("Tinta Sulvinil - Vermelho Cardinal - 18 Litros ",119.90 , 110,"2023-04-03",4);
	insert into tb_produto (nome, preco, estoque_produto, data_validade, categoria_id) values ("Torneira Deca ",142.99 ,75 ,"2023-03-14",5);
	insert into tb_produto (nome, preco, estoque_produto, data_validade, categoria_id) values ("Plantas ",30.99 ,39 ,"2021-12-25",6);
	insert into tb_produto (nome, preco, estoque_produto, data_validade, categoria_id) values ("Gramado artificial ",5.90 ,331 ,"2022-10-25",6);
    
    select * from tb_produto where preco > 50;
    
    select * from tb_produto where preco between 3 and 60;
    
    select * from tb_produto where nome like "%B%";
    
	select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

	select * from tb_produto where categoria_id = 1;
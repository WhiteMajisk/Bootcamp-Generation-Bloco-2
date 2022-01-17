create database db_pizzaria_nona_paulina;

use db_pizzaria_nona_paulina;

create table tb_categoria (
	id bigint auto_increment,
    
	categorias varchar (255) not null,
    tipo varchar (255) not null,
    combo varchar (255) not null,
    ativo boolean not null,
    
    primary key (id)		
    );
    select * from tb_categoria;
    
    insert into tb_categoria (categorias, tipo, combo, ativo) values ("Pizza ","Salgada ","Combo ",true);
	insert into tb_categoria (categorias, tipo, combo, ativo) values ("Pizza ","Salgada ","Combo ",true);
    insert into tb_categoria (categorias, tipo, combo, ativo) values ("Pizza ","Salgada ","Combo ",false);
	insert into tb_categoria (categorias, tipo, combo, ativo) values ("Pizza ","Salgado ","Combo ",false);
    insert into tb_categoria (categorias, tipo, combo, ativo) values ("Pizza ","Salgado ","Combo ",true);
    insert into tb_categoria (categorias, tipo, combo, ativo) values ("Pizza ","Salgado ","Combo ",true);
    
	create table tb_pizza(
		id bigint auto_increment,
		sabor varchar (255) not null,
		tamanho varchar (255) not null,
		valor decimal (8,2) not null,
		recheio_borda varchar (255) not null,
		categoria_id bigint,
            
            primary key (id),
            FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)           
    );
    
    select * from tb_pizza;
    
    insert into tb_pizza (sabor, tamanho, valor, recheio_borda, categoria_id) values ("Calabresa ","Grande ",39.90,"Borda recheada com: Catupiry ",1);
	insert into tb_pizza (sabor, tamanho, valor, recheio_borda, categoria_id) values ("Mussarela ","Grande ",39.90,"Borda recheada com: Catupiry ",2);
	insert into tb_pizza (sabor, tamanho, valor, recheio_borda, categoria_id) values ("Toscana ","Grande ",39.90,"Borda recheada com: Cheddar ",3);
	insert into tb_pizza (sabor, tamanho, valor, recheio_borda, categoria_id) values ("A Moda da Casa ","Grande ",49.90,"Borda recheada com: Catupiry ",4);
	insert into tb_pizza (sabor, tamanho, valor, recheio_borda, categoria_id) values ("Jardineira ","Grande ",59.90,"Borda recheada com: Cheddar ",5);
	insert into tb_pizza (sabor, tamanho, valor, recheio_borda, categoria_id) values ("Peruana ","Grande ",59.90,"Borda recheada com: Catupiry ",6);
    
    select * from tb_pizza where valor > 45;
    
    select * from tb_pizza where valor between 29 and 60;
    
    select * from tb_pizza where sabor like "%C%";
    
   	select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
    
    select tb_categoria.categorias, tb_pizza.tamanho, tb_pizza.sabor, tb_pizza.recheio_borda, tb_pizza.valor
    from tb_pizza inner join tb_categoria
    on tb_categoria.id = tb_pizza.categoria_id;
    
    select * from tb_pizza where categoria_id in(3,4);
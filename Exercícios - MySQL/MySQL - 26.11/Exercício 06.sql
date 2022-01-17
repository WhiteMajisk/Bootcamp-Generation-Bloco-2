create database db_Microlins;
use db_Microlins;

     create table tb_categoria (
		id bigint auto_increment,
        
        categorias varchar (255) not null, 
		quantia_cursos int not null,
        Plataforma varchar (255) not null,
               
        primary key (id)
     );     
     select * from tb_categoria;
     
    insert into tb_categoria (categorias, quantia_cursos, Plataforma) values ("Curso de Ourives e Joalheiro ", 12,"Hotmart ");
	insert into tb_categoria (categorias, quantia_cursos, Plataforma) values ("Alemão ", 12,"Hotmart "); 
	insert into tb_categoria (categorias, quantia_cursos, Plataforma) values ("Desenvolvimento de Sistemas ", 6,"Hotmart ");
	insert into tb_categoria (categorias, quantia_cursos, Plataforma) values ("Russo ", 12,"Hotmart ");
    insert into tb_categoria (categorias, quantia_cursos, Plataforma) values ("Inglês ", 6,"Hotmart ");

     create table tb_curso (		
		id bigint auto_increment,
        
        nome varchar (255) not null,
        preco decimal (8,2) not null,
        promocao boolean not null,
		tamanho_desconto varchar (255) not null,
        duração varchar (255) not null,
        categoria_id bigint,
        
        primary key (id),
		foreign key (categoria_id) REFERENCES tb_categoria (id)        
     );
     
     select *from tb_curso;
     
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Pacote JAVA, JAVA Script, HTML e Python ",1.300 ,true,"5% ","5 meses ",1);
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Russo Básico ",840 ,true,"8% ","12 meses ",1);
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Russo Avançado ",610 ,true,"10% ","12 meses ",2);
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Inglês Básico ",350 ,false,"N/A ","12 meses ",5);
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Inglês Avançado ",550 ,true,"20% ","12 meses ",5);
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Alemão Básico ",300 ,false,"N/A ","12 meses ",3);
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Alemão Avançado ",650 ,false,"5% ","12 meses ",3);
	insert into tb_curso (nome, preco, promocao, tamanho_desconto, duração, categoria_id) values ("Curso confecção de joias ",1.000,true,"25% ","8 meses ",4);
    
    select * from tb_curso where preco > 50;
    
    select * from tb_curso where preco between 3 and 60;
    
    select * from tb_curso where nome like "%j%";
    
	select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

    select * from tb_curso where categoria_id = 5;
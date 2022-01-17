create database db_gameonline_generation;

use db_gameonline_generation;

create table tb_classe(
	
    id bigint auto_increment,
    
    categoria varchar(255) not null,
	nivel int not null,
    exp_adquirida int not null,
	
    primary key (id)
);

select * from tb_classe;

insert into tb_classe (categoria, nivel, exp_adquirida) values ("Elite Knight ",65 ,"720.000");
insert into tb_classe (categoria, nivel, exp_adquirida) values ("Elder Druid ",44 ,"350.000");
insert into tb_classe (categoria, nivel, exp_adquirida) values ("Royal Paladin ",48 ,"392.000");
insert into tb_classe (categoria, nivel, exp_adquirida) values ("Master Sorcerer ",53 ,"610.000");
insert into tb_classe (categoria, nivel, exp_adquirida) values ("Extreme Punisher ",92 ,"900.000");

select * from tb_classe;

create table tb_personagem(
	id bigint auto_increment,
    
    nome varchar(255) not null,
    velocidade bigint not null,
    ataque_magico bigint not null,
    ataque bigint not null,
    defesa bigint not null,
    classe_id bigint,
    
	primary key (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

select * from tb_personagem;

-- Royal Paladin
insert into tb_personagem (nome,velocidade,ataque_magico,ataque,defesa,classe_id) values ("Kommander ",400 ,2000 ,8000 ,2000 ,1);
insert into tb_personagem (nome,velocidade,ataque_magico,ataque,defesa,classe_id) values ("Smoothyz ",300 ,1500 ,7500 ,1050 ,1);

-- Elder Druid 
insert into tb_personagem (nome,velocidade,ataque_magico,ataque,defesa,classe_id) values ("Magiczny ",200 ,5000 ,1600 ,1000 ,2);
insert into tb_personagem (nome,velocidade,ataque_magico,ataque,defesa,classe_id) values ("Moonzin ",210 ,4000 ,1400 ,1000 ,2);

-- Master Sorcerer
insert into tb_personagem (nome,velocidade,ataque_magico,ataque,defesa,classe_id) values ("Bobeek ",270 ,9900 ,1900 ,2000 ,3);

-- Elite Knight
insert into tb_personagem (nome,velocidade,ataque_magico,ataque,defesa,classe_id) values ("Kharsek ",270 ,1690 ,2500 ,3000 ,4);
insert into tb_personagem (nome,velocidade,ataque_magico,ataque,defesa,classe_id) values ("Cirokz ",160 ,1480 ,1500 ,3000 ,4);

-- Extreme Punisher
insert into tb_personagem (nome,velocidade,ataque_magico,ataque,defesa,classe_id) values ("Lupus Wilde ",250 ,1500 ,8500 ,6800 ,3);

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between  1000 and 2000;

select * from tb_personagem where nome like "%C%";

select * from tb_personagem inner join  tb_classe on tb_classe.id = tb_personagem.classe_id;

select tb_personagem.nome,  tb_classe.categoria, tb_classe.nivel, tb_personagem.ataque, tb_personagem.defesa
from tb_personagem inner join  tb_classe 
on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem where classe_id = 1;
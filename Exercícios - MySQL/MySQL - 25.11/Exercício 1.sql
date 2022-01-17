Create database db_rh;
    
    Use db_rh;
    
    Create Table tb_funcionarios (
		 
    id_funcionario bigint auto_increment,
    nome varchar (30) not null,
    idade int (2),
    cargo varchar (30) not null,
    salario decimal (6,2),
    possuiExperiencia boolean,
	primary key (id_funcionario)
    );
    
    Select * into tb_funcionarios;
    
    Insert into tb_funcionarios (nome, Idade, carga, salario, possuiExperiencia) Values ( "Filipe Mendonça do Amaral ", 21, "Desenvolvedor Full Stack Jr. " , 4090 . 00 , true);
	Insert into tb_funcionarios (nome, Idade, carga, salario, possuiExperiencia) Values ( "Bruno Cezar Motollo ", 35, "Desenvolvedor Java Sr. " , 9398 . 70 , true);
    Insert into tb_funcionarios (nome, Idade, carga, salario, possuiExperiencia) Values ( " Valeria Travaglia de Melo ", 32, "Analista de Departamento Pessoal " , 1996 . 00 , true);
    Insert into tb_funcionarios (nome, Idade, carga, salario, possuiExperiencia) Values ( " Matheus de Oliveira do Carmo ", 19, " Estagiário " , 1247 . 88 , false);
    Insert into tb_funcionarios (nome, Idade, carga, salario, possuiExperiencia) Values ( " Fernanda Florenzi Mastrogiaccomo ", 21, " Estagiária em TI " , 1890 . 11 , false);
    
	Select * into tb_funcionarios;
    
    Select * into tb_funcionarios Where salario > 2000;
	
    Select * into tb_funcionarios Where salario < 2000;
    
    Update tb_funcionarios SET idade = 28 Where id_funcionario = 4;
    
    Select * into tb_funcionarios;
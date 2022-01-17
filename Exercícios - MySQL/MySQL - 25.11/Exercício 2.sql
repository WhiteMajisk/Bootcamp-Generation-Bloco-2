Create database db_ecommerce;

Use db_ecommerce;

Create Table tb_produto(
id_produto bigint auto_increment,
nome varchar (30) not null,
tipo varchar (30) not null,
pré- decimal (10 , 2),
disponivelEstoque boolean,
Primary Key (id_produto)
);

Select * into tb_produto;

Insert into tb_produto (nome, tipo, preco, disponivelEstoque) Value ("Corta Vento Oakley" , " Vestuario " , 899.99 , true);
Insert into tb_produto (nome, tipo, preco, disponivelEstoque) Value ("Iphone 13 Pro Max" , " Eletronico " , 17599.99 , true);
Insert into tb_produto (nome, tipo, preco, disponivelEstoque) Value ("Tenis Oakley Flak 1.3 " , " Vestuario " , 799.99 , false);
Insert into tb_produto (nome, tipo, preco, disponivelEstoque) Value ("Camiseta Nike " , " Vestuario " , 159.90 , true);
Insert into tb_produto (nome, tipo, preco, disponivelEstoque) Value ("Geladeira Side by Side Samsung " , " Eletrodoméstico " , 16990.99 , true);
Insert into tb_produto (nome, tipo, preco, disponivelEstoque) Value ("Feijão Pantera " , " Alimento " , 35.00 , false);
Insert into tb_produto (nome, tipo, preco, disponivelEstoque) Value ("Calça Jeans Calvin Klein  " , " Vestuario " , 399.99 , true);
Insert into tb_produto (nome, tipo, preco, disponivelEstoque) Value ("Caixa de som JBL BoomBox " , " Eletronico " , 2590.99 , true);

Select * into tb_produto where preco > 500;

Select * into tb_produto where preco < 500;

Update tb_produto SET preco = 4500.00 where id_produto = 7;

Select * into tb_produto;
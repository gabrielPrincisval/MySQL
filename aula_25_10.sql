use bd2;

create table usuarios (
	id int,
	nome varchar(255) not null,
	email varchar (255) not null
);
show columns from usuarios;
alter table usuarios
add primary key(id);

drop table usuarios;

insert into usuarios (id, nome, email) values (1, 'Gabriel', 'gabrielprincisval@educsi.com.br');

insert into usuarios (id, nome, email) values (2, 'CANO', 'gabrielprinci2sval@educsi.com.br');

insert into usuarios (id, nome, email) values (2, 'NENE','gabrielprinci3sval@educsi.com.br');

insert into usuarios (id, nome, email) values (null, 'CAIO', 'gabrielprinc4isval@educsi.com.br');

select*from usuarios;

update usuarios
set
id = 3
where
nome = 'CANO';

update usuarios
set
id = 4
where
nome = 'CAIO';

alter table usuarios
modify column id int (11) auto_increment;
insert into usuarios (nome, email)
values ('MG', 'gabrielprinc5isval@educsi.com.br');

create table categorias(
	id int (11) primary key auto_increment,
	nome varchar (255) not null
);

create table produtos(
	id int(11) primary key auto_increment,
	nome varchar (255) not null,
	valor float not null,
	categoria_id int (11) not null,
	foreign key(categoria_id) references categorias (id)

);

insert into categorias (nome) values ('Eletronicos');
insert into categorias (nome) values ('Infomáticas');
insert into categorias (nome) values ('Acessórios');

select * from categorias;

insert into produtos (nome, valor, categoria_id)
value ('mouse', 100, 1);

insert into produtos (nome, valor, categoria_id)
value ('teclado', 200, 2);

insert into produtos (nome, valor, categoria_id)
value ('Som JBL', 1500, 1);

insert into produtos (nome, valor, categoria_id)
value ('timer', 100, 3);

insert into produtos (nome, valor, categoria_id)
value ('HD', 500, 2);

insert into produtos (nome, valor, categoria_id)
value ('Webcam', 900, 3);

insert into produtos (nome, valor, categoria_id)
value ('hedset', 500, 2);

select*from produtos;


select 
categorias.nome as 'categoria_nome', 
produtos.nome as 'produto_nome', 
produtos.valor
from produtos
inner join categorias on produtos.categoria_id = categorias.id;






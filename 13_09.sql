use bd2;

-- CONSTRAINT - RESTRIÇÕES

/*

2 maneiras de inserir

-Na criaçâo da tabela (create table)
-Na alteração da tabela(alter table)
*/


-- not nul na criação
show tables from bd2;

create table animais (

id int primary key auto_increment,
nome varchar(255) not null

);

insert into animais(nome) values('Gato');
insert into animais(nome) values(NULL);

drop table animais;

-- NOT NUL no ALTER TABLE
create table animais (

id int primary key auto_increment,
nome varchar(255) 
);

alter table animais
modify column nome varchar(255) not null;

insert into animais(nome) values('Gato');
insert into animais(nome) values(NULL);

show columns from animais;

drop table animais;

-- refazer colocando primary key not null

create table animais (

id int,
nome varchar(255) 
);

alter table animais

modify column nome varchar(255) not null;


alter table animais

add constraint primary key (id);


alter table animais

modify column id int (11) auto_increment;

insert into animais(nome) values('Gato');
insert into animais(nome) values('cachorro');
insert into animais(nome) values('papagaio');

select*from animais;


-- criaçâo UNIQUE

create table alunos(

id int primary key auto_increment,
nome varchar(255) not null,
email varchar(191) not null,

unique(email)
);

insert into alunos (nome, email) values
('Gabriel Silveira','gabriel.princisval@educsi.com.br');

insert into alunos (nome, email) values
('Rodrigo','rd.melindrosol@educsi.com.br');


-- não vai inserir pq ja existe esse email
insert into alunos (nome, email) values
('Arnaldo Natividade','gabriel.princisval@educsi.com.br');


-- NA ALTERAÇÂO - UNIQUE

create table alunos(

id int primary key auto_increment,
nome varchar(255) not null,
email varchar(191) not null

);

insert into alunos (nome, email) values
('Gabriel Silveira','gabriel.princisval@educsi.com.br');

insert into alunos (nome, email) values
('Rodrigo','rd.melindrosol@educsi.com.br');

insert into alunos (nome, email) values
('Arnaldo Natividade','gabridel.princisval@educsi.com.br');

select*from alunos;

delete from alunos 
where id=3;

alter table alunos
add unique (email);

drop table alunos;
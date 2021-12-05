use bd2;
-- check ja na tabela
create table alunos (
id int primary key auto_increment,
nome varchar(255) not null,
cidade varchar(255) not null,
idade int,
check(idade >= 18)



);

insert into alunos (nome, cidade, idade) 
values('Gabriel', 'Rio de janeiro',17);

insert into alunos (nome, cidade, idade) 
values('Julio', 'Rio de janeiro',18);

select *from alunos;

-- CHECK JA NA TABELA-----------------
create table inscricoes (
	id int primary key auto_increment,
    nome varchar(255) not null,
    cidade varchar (255) not null,
    idade int not null,
	constraint CHK_Inscricoes check(idade >=18 and cidade = 'Rio de Janeiro')	
);

show columns from inscricoes;

insert into inscricoes (nome, cidade, idade) values ('Gabriel','São Paulo', 20);
insert into inscricoes (nome, cidade, idade) values ('Lucas','Rio de Janeiro', 16);
insert into inscricoes (nome, cidade, idade) values ('Pedro','Rio de Janeiro', 20);

select*from inscricoes;

drop table alunos;
drop table inscricoes;

create table alunos (
id int primary key auto_increment,
nome varchar(255) not null,
cidade varchar(255) not null,
idade int
);

create table inscricoes (
	id int primary key auto_increment,
    nome varchar(255) not null,
    cidade varchar (255) not null,
    idade int not null
	
);


alter table alunos
add check (idade>=18);

insert into alunos (nome, cidade, idade) 
values('Gabriel', 'Rio de janeiro',17);

insert into alunos (nome, cidade, idade) 
values('Julio', 'Rio de janeiro',18);

alter table inscricoes
add constraint CHK_Inscricoes check(idade >= 18 and cidade = 'Rio de Janeiro');

insert into inscricoes (nome, cidade, idade) values ('Gabriel','São Paulo', 20);
insert into inscricoes (nome, cidade, idade) values ('Lucas','Rio de Janeiro', 16);
insert into inscricoes (nome, cidade, idade) values ('Pedro','Rio de Janeiro', 20);


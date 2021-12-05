CREATE DATABASE bd2;
USE bd2;
-- saber todas as tabelas do banco
/*

CREATE TABLE NoDaTabela(
	nome_do_campo1 tipo(tamannho),
    nome_do_campo2 tipo(tamannho),
    nome_do_campo3 tipo(tamannho)
);

;*/
CREATE TABLE clientes (

	id int(11) auto_increment primary key,
	nome varchar(255),
	endereco varchar(255),
	cidade varchar(100),
	uf char(2)



);
-- mostrar as colunas da tabelas----
SHOW COLUMNS FROM clientes;

insert into clientes (nome, endereco, cidade, uf)
values('Gabriel','Rua Caburi','São joão de meriti', 'RJ');

insert into clientes (nome, endereco, cidade, uf)
values('Rd o melindroso','vila São luiz','Caxias', 'RJ');

insert into clientes (nome, endereco, cidade, uf)
values('Rafael','Rua 3','Botafogo', 'RJ');






select * from Meus_Clientes;

-- renomear tabela

RENAME TABLE clientes TO Meus_Clientes;

select * from Meus_Clientes;

-- excluir tabela

DROP TABLE clientes;

SHOW COLUMNS FROM Meus_Clientes;

-- Limpa todos os dados da tabela e volta o auto incremento para 1

CREATE TABLE produtos(
id int primary key auto_increment,
nome varchar(80) not null


);
-- inserir dados

insert into produtos (nome) values ('camisa');
insert into produtos (nome) values ('calça');
insert into produtos (nome) values ('meia');

select*from produtos;

ALTER TABLE produtos

ADD descricao TEXT;

ALTER TABLE produtos

ADD valor float;

ALTER TABLE produtos

ADD observacao varchar(80);

show columns from produtos;


select * from produtos;

-- EXCLUIR UM CAMPO

alter table produtos
DROP COLUMN descricao;


-- MODIFICAR UM CAMPO

alter table produtos
modify column observacao varchar(255);


-- teste convertendo de float para inteiro
-- converte, mas corta as casas decimais 


insert into produtos (nome, valor, observacao)
values('Timer', 10.34, 'observacao');

alter table produtos
modify column valor int(11);

select * from produtos;

-- se inserimos uma valor com casa decimal acima de 5 ele arredonda para o inteiro superior
-- no exemplo ele arrendo para 21
insert into produtos (nome, valor, observacao)
values('Relogio', 20.72, 'Uma grande observacao para testar o que acontece quando inserimos um campo grande e depois convertemos para uma campo menor');


-- se inseririmos uma string maior e depois convertemos o campo para
-- um campo texto menor ele vai cortar o conteúdo para um novo tamanho.

alter table produtos
modify column observacao varchar(50);

alter table produtos
modify column observacao varchar(255);



CREATE TABLE doces(

id INT,
nome varchar (80) NOT NULL
);

ALTER TABLE doces
ADD CONSTRAINT PRIMARY KEY (id);

ALTER TABLE doces
MODIFY COLUMN id int(11) NOT NULL AUTO_INCREMENT FIRST;

select *from doces;



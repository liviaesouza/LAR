create database bancolar;
use bancolar;

create table restaurantes (
nome varchar(9),
logo varchar(10),
local varchar(15),
foto varchar(10),
taxa int,
 primary key (nome)
 );

 create table cliente (
cpf varchar(11), 
nome varchar(9),
nasc date,
tele varchar(20),
loc varchar(15),
email varchar(30),
taxa int,
chat varchar(50), 
 primary key (cpf)
 );
 
 create table chefes (
 cpf varchar(11), 
 nome varchar(20),
 nasc date,
 email varchar(30),
 curriculo varchar(100),
 tele varchar(20),
 taxa int,
 primary key (cpf)
 );
 
 create table cardapio(
 cod int,
 primary key (cod),
 FK_restaurantes_nome varchar(20),
 FOREIGN KEY(FK_restaurantes_nome) REFERENCES restaurantes(nome)

 );
 
 create table categoria(
 cod int,
 nome varchar(20),
 primary key (cod),
 FK_cardapio_cod int,
 FOREIGN KEY(FK_cardapio_cod) REFERENCES cardapio(cod)
 );
 
 create table itens (
 nome varchar(20),
 foto varchar (10),
 descricao varchar(30),
 preco double,
 primary key (nome)
 );
 
 create table fdp (
 cod int,
 tipo varchar(30), 
 primary key (cod)
 );
 
 CREATE TABLE clienterestaurantes(
	FK_cpf_cliente varchar(11),
    FK_nome_restaurantes varchar(9),
    Favoritar varchar(10),
    acessar varchar(10),
    PRIMARY KEY(FK_cpf_cliente, FK_nome_restaurantes),
    FOREIGN KEY(FK_cpf_cliente) REFERENCES cliente(cpf),
    FOREIGN KEY(FK_nome_restaurantes) REFERENCES restaurantes(nome)
);

 CREATE TABLE chefesrestaurantes(
	FK_cpf_chefes varchar(11),
    FK_nome_restaurantes varchar(9),
    PRIMARY KEY(FK_cpf_chefes, FK_nome_restaurantes),
    FOREIGN KEY(FK_cpf_chefes) REFERENCES chefes(cpf),
    FOREIGN KEY(FK_nome_restaurantes) REFERENCES restaurantes(nome)
);


CREATE TABLE categoriaitens(
	FK_cod_categoria int,
    FK_nome_itens varchar(20),
    PRIMARY KEY(FK_cod_categoria, FK_nome_itens),
    FOREIGN KEY(FK_cod_categoria) REFERENCES categoria(cod),
    FOREIGN KEY(FK_nome_itens) REFERENCES itens(nome)
);

CREATE TABLE compras(
	FK_cpf_cliente varchar(11),
    FK_cod_fdp int,
	FK_nome_itens varchar(20),
    PRIMARY KEY(FK_cpf_cliente, FK_cod_fdp, FK_nome_itens),
    FOREIGN KEY(FK_cpf_cliente ) REFERENCES cliente(cpf),
    FOREIGN KEY(FK_cod_fdp) REFERENCES fdp(cod),
	FOREIGN KEY(FK_nome_itens) REFERENCES itens(nome)
);

 
 
 
 


create database bancolar;
use bancolar;

create table restaurantes (
cnpj varchar (20),
tele varchar (20),
nomeFantasia varchar(15),
nome varchar(30),
post varchar (500),
quantpost varchar (500),
avaliacao varchar (4),
horario varchar (20),
chat varchar (1000),
logo varchar(10),
local varchar(15),
foto varchar(10),
email varchar(30),
senha varchar(10),
data DATE,
taxa int,
 primary key (cnpj)
 );

 create table cliente (
nome varchar(9),
nomeUsuario varchar(20),
sexo varchar(10),
fotoPerfil varchar(10),
nasc date,
tele varchar(20),
loc varchar(15),
email varchar(30),
senha varchar(10),
chat varchar(1000), 
data DATE,
 primary key (nome)
 );
 
 create table chefes (
 senha varchar (10),
 foto varchar (10),
 nome varchar(20),
 sexo varchar(10),
 nomeUsuario varchar (20),
 quantpost varchar (500),
 post varchar (500), 
 avaliacao varchar (4),
 nasc date,
 email varchar(30),
 curriculo varchar(100),
 tele varchar(20),
 taxa int,
 chat varchar(1000),
 data DATE,
 primary key (senha)
 );
 
 create table cardapio(
 cod int,
 primary key (cod),
 FK_restaurantes_cnpj varchar(20),
 FOREIGN KEY(FK_restaurantes_cnpj) REFERENCES restaurantes(cnpj)
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
 
 create table assinatura(
 cod int,
 valorAssinatura int,
 descricao varchar(150),
 primary key (cod)
 );
 
 create table chefesassinatura(
 FK_senha_chefes varchar(10),
 FK_cod_assinatura int,
 primary key(FK_senha_chefes, FK_cod_assinatura),
 foreign key(FK_senha_chefes)references chefes(senha),
 foreign key(FK_cod_assinatura)references assinatura(cod)
 );
 
 create table restaurantesassinatura(
 FK_cnpj_restaurantes varchar(20),
 FK_cod_assinatura int,
 primary key(FK_cnpj_restaurantes, FK_cod_assinatura),
 foreign key(FK_cnpj_restaurantes) references restaurantes(cnpj),
 foreign key(FK_cod_assinatura) references assinatura(cod)
 );
 
 CREATE TABLE clienterestaurantes(
	FK_nome_cliente varchar(11),
    FK_cnpj_restaurantes varchar(20),
    Favoritar varchar(10),
    acessar varchar(10),
    PRIMARY KEY(FK_nome_cliente, FK_cnpj_restaurantes),
    FOREIGN KEY(FK_nome_cliente) REFERENCES cliente(nome),
    FOREIGN KEY(FK_cnpj_restaurantes) REFERENCES restaurantes(cnpj)
);

 CREATE TABLE chefesrestaurantes(
	FK_senha_chefes varchar(11),
    FK_cnpj_restaurantes varchar(20),
    PRIMARY KEY(FK_senha_chefes, FK_cnpj_restaurantes),
    FOREIGN KEY(FK_senha_chefes) REFERENCES chefes(senha),
    FOREIGN KEY(FK_cnpj_restaurantes) REFERENCES restaurantes(cnpj)
);


CREATE TABLE categoriaitens(
	FK_cod_categoria int,
    FK_nome_itens varchar(20),
    PRIMARY KEY(FK_cod_categoria, FK_nome_itens),
    FOREIGN KEY(FK_cod_categoria) REFERENCES categoria(cod),
    FOREIGN KEY(FK_nome_itens) REFERENCES itens(nome)
);

CREATE TABLE compras(
	FK_nome_cliente varchar(11),
    FK_cod_fdp int,
	FK_nome_itens varchar(20),
    PRIMARY KEY(FK_nome_cliente, FK_cod_fdp, FK_nome_itens),
    FOREIGN KEY(FK_nome_cliente ) REFERENCES cliente(nome),
    FOREIGN KEY(FK_cod_fdp) REFERENCES fdp(cod),
	FOREIGN KEY(FK_nome_itens) REFERENCES itens(nome)
);

create table itensrestaurantes(
FK_nome_itens varchar(20),
FK_cnpj_restaurantes varchar(20),
primary key(FK_nome_itens, FK_cnpj_restaurantes),
foreign key(FK_nome_itens) references itens(nome),
foreign key(FK_cnpj_restaurantes) references restaurantes(cnpj)
);

create table cupons(
cod int,
desconto varchar(20),
comprasApartirDoValor varchar(20),
primary key(cod)
);

create table delivery(
cod int,
comprasApartirDoValor varchar(20),
primary key(cod)
);

create table restaurantesdelivery(
FK_cnpj_restaurantes varchar(20),
FK_cod_delivery int,
primary key(FK_cnpj_restaurantes, FK_cod_delivery),
foreign key(FK_cnpj_restaurantes) references restaurantes(cnpj),
foreign key(FK_cod_delivery) references delivery(cod)
);

create table chefesdelivery(
FK_senha_chefes varchar(10),
FK_cod_delivery int,
primary key(FK_senha_chefes, FK_cod_delivery),
foreign key(FK_senha_chefes) references chefes(senha),
foreign key(FK_cod_delivery) references delivery(cod)
);

 create table cuponscliente(
 FK_cod_cupons int,
 FK_nome_cliente varchar(9),
 primary key(FK_cod_cupons, FK_nome_cliente),
 foreign key(FK_cod_cupons) references cupons(cod),
 foreign key(FK_nome_cliente) references cliente(nome)
 );
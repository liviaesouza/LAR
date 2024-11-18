INSERT INTO restaurantes(cnpj, tele, nome, quantpost, post, avaliacao, horario, chat, logo, local, foto, email, senha, taxa) VALUES
("11.111.111/0001-11", "(82)9888-8888", "Donacindi", "100", "post1","3,4", "18:00 às 00:00", "chat1", "www.logo", "", "www.foto", "donac@email.com", "donac123", 90),
("22.222.222/0001-22","(82)98002-8922", "Empire", "200", "post2", "4,5", "18:00 às 01:00", "chat2", "www.logo", "Messias", "www.foto", "empire@email.com", "empire123", 110),
("33.333.333/0001-33", "(82)94444-4444","WaldorfDs", "180", "post2", "4,9", "08:00 às 02:00", "chat2", "www.logo", "Maceio", "www.foto", "waldorf@email.com", "waldorf123", 150);

INSERT INTO cliente(nome, nasc, tele, loc, email, senha, chat ) VALUES
( "Scorfield", "2019-07-22", 88888800,"Maceió", "luna@email.com", "Ranny123","chat.com"),
( "Sara", "2007-07-13", 82440598,"Messias", "bass@email.com", "RioMeuAmor","chat.com"),
( "Lincoln", "2007-08-03", 82064222,"Maceió", "Blair@email.com", "Tucano","chat.com");

INSERT INTO chefes(senha, foto, nome, nomeUsuario, quantpost, post,  avaliacao, nasc, email, curriculo, tele, taxa) VALUES
("justnormal", "foto1", "maria","maria22","80", "post1","4,0","2000-07-26", "mari@email.com", "curric1", 9836456, 70),
("pedro123", "foto2", "pedro", "pedro14", "112", "post2", "3,9", "2002-05-13","pedro@email.com","curric2", 8768756, 90),
("dan123", "foto3", "dan", "dan16", "102", "post3", "3.6", "2004-09-08", "dan@email.com", "curric3", 343465, 110);

INSERT INTO cardapio(cod, FK_restaurantes_cnpj ) VALUES
("904778", "11.111.111/0001-11"),
("237896", "22.222.222/0001-22"),
("565789" , "33.333.333/0001-33");

INSERT INTO categoria(cod, nome, FK_cardapio_cod ) VALUES
("96758", "entrada","904778"),
("078354", "prato principal","237896"),
("23456" , "sobremesa","565789");

INSERT INTO itens(nome, foto, descricao, preco) VALUES
("coxinha", "foto1","desc1","20"),
("pastel", "foto2","desc2","15"),
("strogonoff", "foto3","desc3","25");

INSERT INTO categoriaitens(FK_cod_categoria, FK_nome_itens) VALUES
("96758", "coxinha"),
("078354", "pastel"),
("23456","strogonoff");

INSERT INTO fdp(cod, tipo) VALUES
("97775", "Pix"),
("846777", "Cartão"),
("275634","Dinheiro");

INSERT INTO clienterestaurantes(FK_nome_cliente, FK_cnpj_restaurantes, Favoritar,acessar) VALUES
("Scorfield", "11.111.111/0001-11","favort1","acess1"),
("Sara", "22.222.222/0001-22","favort2","acess2"),
("Lincoln", "33.333.333/0001-33","favort3","acess3");

INSERT INTO chefesrestaurantes(FK_senha_chefes, FK_cnpj_restaurantes) VALUES
("justnormal", "11.111.111/0001-11"),
("pedro123", "22.222.222/0001-22"),
("dan123", "33.333.333/0001-33");

INSERT INTO compras(FK_nome_cliente, FK_cod_fdp, FK_nome_itens) VALUES
("Scorfield", "97775", "coxinha"),
("Sara", "846777", "pastel"),
("Lincoln", "275634", "strogonoff");

insert into itensrestaurantes(FK_nome_itens, FK_cnpj_restaurantes) values
("coxinha", "22.222.222/0001-22"),
("pastel", "11.111.111/0001-11"),
("strogonoff", "33.333.333/0001-33");

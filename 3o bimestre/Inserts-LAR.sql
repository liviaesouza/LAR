INSERT INTO restaurantes(cnpj, tele, nomeFantasia, nome, quantpost, post, avaliacao, horario, chat, logo, local, foto, email, senha, data, taxa) VALUES
("11.111.111/0001-11", "(82)9888-8888", "Donacindi", "Donacindi Woodsen", "100", "post1","3,4", "18:00 às 00:00", "chat1", "www.logo", "", "www.foto", "donac@email.com", "donac123", '2024-05-23', 150),
("22.222.222/0001-22","(82)98002-8922", "Empire", "Empire Bass","200", "post2", "4,5", "18:00 às 01:00", "chat2", "www.logo", "Messias", "www.foto", "empire@email.com", "",'2024-10-15',150),
("33.333.333/0001-33", "(82)94444-4444","Waldorf", "Waldorf Archibald", "180", "post2", "4,9", "08:00 às 02:00", "chat2", "www.logo", "Maceio", "www.foto", "waldorf@email.com", "waldorf123",'2024-10-23',150);

INSERT INTO cliente(nome, nomeUsuario, sexo, fotoPerfil, nasc, tele, loc, email, senha, chat, data) VALUES
( "Scofield","Scofield26","masculino","perfil1","2000-07-22", 88888800,"Rio largo", "michael@email.com", "Ranny123","chat.com",'2024-11-12'),
( "Sara","Sara20","feminino","perfil2","2007-07-13", 82440598,"Messias", "bass@email.com", "RioMeuAmor","chat.com",'2024-10-15'),
( "Lincoln","Linc06","masculino","perfil3","2007-08-03", 82064222,"Maceió", "linc@email.com", "Tucano","chat.com",'2024-10-23');

INSERT INTO chefes(senha, foto, nome, sexo, nomeUsuario, quantpost, post,  avaliacao, nasc, email, curriculo, tele, taxa, chat, data) VALUES
("justnormal", "foto1", "maria","feminino","maria22","80", "post1","4,0","2000-07-26", "mari@email.com", "curric1", 9836456, 110,"chat1",'2024-11-12'),
("pedro123", "foto2", "pedro","masculino","pedro14", "112", "post2", "3,9", "2002-05-13","pedro@email.com","curric2", 8768756, 110,"chat2",'2024-08-10'),
("dan123", "foto3", "dan","masculino","dan16", "102", "post3", "3.6", "2004-09-08", "dan@email.com", "curric3", 343465, 110, "chat3",'2024-07-13');

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

INSERT INTO assinatura(cod, valorAssinatura, descricao) VALUES 
("1098", "110", "essa assinatura consiste em inumeros beneficios, como: expandir seu negocio para todo o mundo."),
("8795", "150", "essa assinatura consiste em inumeros beneficios, como: expandir seu negocio para todo o mundo."),
("7632", "150", "essa assinatura consiste em inumeros beneficios, como: expandir seu negocio para todo o mundo.");

insert into chefesassinatura(FK_senha_chefes, FK_cod_assinatura) values
("justnormal", "1098"),
("pedro123", "8795"),
("dan123", "7632");

insert into restaurantesassinatura(FK_cnpj_restaurantes, FK_cod_assinatura) values
("11.111.111/0001-11", "1098"),
("22.222.222/0001-22", "8795"),
("33.333.333/0001-33", "7632");

INSERT INTO clienterestaurantes(FK_nome_cliente, FK_cnpj_restaurantes, Favoritar,acessar) VALUES
("Scofield", "11.111.111/0001-11","favort1","acess1"),
("Sara", "22.222.222/0001-22","favort2","acess2"),
("Lincoln", "33.333.333/0001-33","favort3","acess3");

INSERT INTO chefesrestaurantes(FK_senha_chefes, FK_cnpj_restaurantes) VALUES
("justnormal", "11.111.111/0001-11"),
("pedro123", "22.222.222/0001-22"),
("dan123", "33.333.333/0001-33");

INSERT INTO compras(FK_nome_cliente, FK_cod_fdp, FK_nome_itens) VALUES
("Scofield", "97775", "coxinha"),
("Sara", "846777", "pastel"),
("Lincoln", "275634", "strogonoff");

insert into itensrestaurantes(FK_nome_itens, FK_cnpj_restaurantes) values
("coxinha", "22.222.222/0001-22"),
("pastel", "11.111.111/0001-11"),
("strogonoff", "33.333.333/0001-33");

insert into cupons(cod, desconto, comprasApartirDoValor) values
("0098", "5%", "80"),
("2365", "10%", "60"),
("0345", "15%", "30");

insert into delivery(cod, comprasApartirDoValor) values
("1078", "60"),
("1234", "100"),
("0476", "200");

insert into restaurantesdelivery(FK_cnpj_restaurantes, FK_cod_delivery)values
("11.111.111/0001-11","1078"),
("22.222.222/0001-22", "1234"),
("33.333.333/0001-33", "0476");

insert into chefesdelivery(FK_senha_chefes, FK_cod_delivery) values
("justnormal", "1078"),
("pedro123", "1234"),
("dan123", "0476");

insert into cuponscliente(FK_cod_cupons, FK_nome_cliente) values
("0098","Scofield"),
("2365","Sara"),
("0345","Lincoln");

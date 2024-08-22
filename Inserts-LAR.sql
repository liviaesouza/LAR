INSERT INTO restaurantes(nome, logo, local, foto, taxa) VALUES
("Donacindi", "www.logo", "", "www.foto", 90),
("Empire", "www.logo", "Messias", "www.foto", 110),
("WaldorfDs", "www.logo", "Maceio", "www.foto", 150);

INSERT INTO cliente(cpf, nome, nasc, tele, loc, email, taxa, chat ) VALUES
("09874789", "marcia", "2019-07-22", 88888800,"Maceió", "luna@email.com",50,"chat.com"),
("08533316", "ChuckBass", "2007-07-13", 82440598,"Messias", "bass@email.com",70,"chat.com"),
("97865321", "BlairW", "2007-08-03", 82064222,"Maceió", "Blair@email.com",100,"chat.com");

INSERT INTO chefes(cpf, nome, nasc, email, curriculo, tele, taxa) VALUES
("823458", "maria", "2000-07-26", "mari@email.com","curric1", 9836456, 70),
("348876", "pedro", "2002-05-13","pedro@email.com" ,"curric2", 8768756, 90),
("33344", "dan", "2004-09-08", "dan@email.com","curric3", 343465, 110);

INSERT INTO cardapio(cod, FK_restaurantes_nome ) VALUES
("904778", "Donacindi"),
("237896", "Empire"),
("565789" , "WaldorfDs");

INSERT INTO categoria(cod, nome, FK_cardapio_cod ) VALUES
("96758", "entrada","904778"),
("078354", "prato principal","237896"),
("23456" , "sobremesa","565789");

INSERT INTO itens(nome, foto, descricao, preco) VALUES
("petiscos", "foto1","desc1","60"),
("Lasanha", "foto2","desc2","70"),
("Açai", "foto3","desc3","100");

INSERT INTO categoriaitens(FK_cod_categoria, FK_nome_itens) VALUES
("96758", "petiscos"),
("078354", "Lasanha"),
("23456","Açai");

INSERT INTO fdp(cod, tipo) VALUES
("97775", "Pix"),
("846777", "Cartão"),
("275634","Dinheiro");

INSERT INTO clienterestaurantes(FK_cpf_cliente, FK_nome_restaurantes, Favoritar,acessar) VALUES
("09874789", "Donacindi","favort1","acess1"),
("08533316", "Empire","favort2","acess2"),
("97865321", "WaldorfDs","favort3","acess3");

INSERT INTO chefesrestaurantes(FK_cpf_chefes, FK_nome_restaurantes) VALUES
("823458", "Donacindi"),
("348876", "Empire"),
("33344", "WaldorfDs");

INSERT INTO compras(FK_cpf_cliente, FK_cod_fdp, FK_nome_itens) VALUES
("09874789", "97775", "petiscos"),
("08533316", "846777", "Lasanha"),
("97865321", "275634", "Açai");

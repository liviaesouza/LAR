-- select da tela inicial do cliente

-- principais resturantes
SELECT logo, nome from restaurantes;

-- itens do cardapio 
select foto, nome, preco from itens;
 -- ---------------------------------------------------------------------------------------------------------------
-- tela login usuarios 
select senha from restaurantes where email = "waldorf@email.com";
select senha from cliente where email = "bass@email.com";
select senha from chefes where email = "mari@email.com";

-- tela inicial do chefe 
select nome, foto, nomeUsuario, quantpost, post, avaliacao, email, tele from chefes;

-- tela inicial do restaurante 
select foto, nome, logo, email, local, avaliacao, chat, horario, post from restaurantes;

-- tela carrinho do cliente 
select nome, foto, preco from itens; 
select r.nome from restaurantes r 
inner join itensrestaurantes ir 
on ir.FK_cnpj_restaurantes = r.cnpj;
-- perguntar ao David se precisa de condição.

-- tela de chat1 do cliente
select logo, nome, chat,data from restaurantes;
select foto, nomeUsuario, chat, data from chefes;

-- tela de chat2 do cliente 
select nome, foto, data, chat from chefes;

-- tela de chat1 do chefe
select nomeUsuario, fotoPerfil, chat, data from cliente; 

-- tela de chat2 do chefe 
select fotoPerfil, nomeUsuario, chat, data from cliente;

-- tela de chat1 do restaurante
select fotoPerfil, nomeUsuario, chat, data from cliente;

-- tela de chat2 do restaurante
select nomeUsuario, fotoPerfil, chat, data from cliente; 

-- tela de perfil do chefe 
select nome, nomeUsuario, foto, email, tele, sexo from chefes;

-- tela de perfil do cliente 
select nome, nomeUsuario, fotoPerfil, email, tele, sexo from cliente;

-- tela de perfil do restaurante
select logo, nome, nomeFantasia, email, tele from restaurantes;



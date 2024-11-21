-- Select da tela inicial do cliente

-- Principais restaurantes
SELECT logo, nome from restaurantes;

-- Itens do cardapio 
select foto, nome, preco from itens;
 -- ---------------------------------------------------------------------------------------------------------------
-- Tela login usuarios 
select senha from restaurantes where email = "waldorf@email.com";
select senha from cliente where email = "bass@email.com";
select senha from chefes where email = "mari@email.com";

-- Tela inicial do chefe 
select nome, foto, nomeUsuario, quantpost, post, avaliacao, email, tele from chefes;

-- Tela inicial do restaurante 
select foto, nome, logo, email, local, avaliacao, chat, horario, post from restaurantes;

-- Tela carrinho do cliente 
select nome, foto, preco from itens; 
select r.nome from restaurantes r 
inner join itensrestaurantes ir 
on ir.FK_cnpj_restaurantes = r.cnpj;
-- perguntar ao David se precisa de condição.

-- Tela de chat1 do cliente
select logo, nomeFantasia, chat,data from restaurantes where nomeFantasia = "Empire";
select foto, nomeUsuario, chat, data from chefes where nomeUsuario = "maria22";

-- Tela de chat2 do cliente 
select nomeUsuario, foto, data, chat from chefes where nomeUsuario =  "maria22";

-- Tela de chat1 do chefe
select nomeUsuario, fotoPerfil, chat, data from cliente where nomeUsuario = "scofield26"; 

-- Tela de chat2 do chefe 
select fotoPerfil, nomeUsuario, chat, data from cliente where nomeUsuario = "scofield26";

-- Tela de chat1 do restaurante
select fotoPerfil, nomeUsuario, chat, data from cliente where nomeUsuario = "sara20";

-- Tela de chat2 do restaurante
select nomeUsuario, fotoPerfil, chat, data from cliente where nomeUsuario = "sara20"; 

-- Tela de perfil do chefe 
select nome, nomeUsuario, foto, email, tele, sexo from chefes;

-- Tela de perfil do cliente 
select nome, nomeUsuario, fotoPerfil, email, tele, sexo from cliente;

-- Tela de perfil do restaurante
select logo, nome, nomeFantasia, email, tele from restaurantes;

-- Tela de assinatura do chefe
select cod, valorAssinatura from assinatura where cod = "1098";
select senha, email from chefes where senha = "justnormal"; 

-- Tela de assinatura do restaurante(Empire)
select cod, valorAssinatura from assinatura where cod = "8795";
select senha, email from restaurantes where senha = "empire123";

-- Tela de localização do cliente
select loc from cliente where loc = "Rio largo";

-- Tela de cupons do cliente
select desconto, comprasApartirDoValor from cupons;

-- Tela de delivery do cliente
select comprasApartirDoValor from delivery;
select nomeFantasia from restaurantes;
select nomeUsuario from chefes where nomeUsuario = "maria22";
 


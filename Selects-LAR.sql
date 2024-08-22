# Quantos restaurantes se localizam em Messias.
SELECT nome FROM restaurantes WHERE local = "Messias";

#Selecione todos os clientes que tenham o seu nome terminando com “s”.
SELECT nome FROM cliente WHERE nome LIKE "%s";

# Selecione o preço do item mais caro e o mais barato.
SELECT max(preco) AS maior, min(preco) AS menor FROM itens;

# Selecione em ordem alfabética a lista de chefes.
SELECT nome FROM chefes ORDER BY nome;

# Qual a média do preço dos itens?
SELECT AVG(preco) FROM itens;

# Quantos clientes pagam a taxa maior ou igual que  R$ 70,00?
SELECT COUNT(*) FROM cliente WHERE taxa >= 70;

# Selecione as cidades diferentes, na tabela restaurantes, por ordem alfabetica?
SELECT DISTINCT local FROM restaurantes ORDER BY local;

# Listar as taxas cobradas para os chefes.
SELECT taxa FROM chefes GROUP BY taxa;

# Selecione o preço e descrição dos itens maiores que 50 e o nome em ordem alfabética.
SELECT nome, descricao FROM itens WHERE preco > 50 ORDER BY
nome ASC;

# Selecione o nome a foto e a descrição dos itens que  tenham o valor unitário na faixa de R$ 20,00 e R$ 100,00.
SELECT nome, foto, descricao FROM itens WHERE preco BETWEEN 20
AND 100;
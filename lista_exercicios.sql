LISTA DE EXERCÍCIOS - SQL

-- Listar todos os produtos com as respectivas descrições, unidades e valores unitários, obtendo o seguinte resultado:
SELECT descricao, unidade, valor_unitario FROM produtos;
-- Listar todo o conteúdo de vendedor, obtendo o seguinte resultado, usando *:
SELECT * FROM vendedores;
-- Listar da tabela CLIENTE o CNPJ, o nome do cliente e seu endereço, obtendo o seguinte resultado:
SELECT cnpj, nome, endereco FROM clientes;
-- Listar todas as cidades em que há clientes
SELECT DISTINCT cidade FROM clientes;
-- Listar todas as cidades e estados em que há clientes
SELECT DISTINCT cidade, uf FROM clientes;
-- Quais são os clientes que moram em Niterói?
SELECT * FROM clientes WHERE cidade = 'Niteroi';
-- Listar os produtos que tenham unidade igual a ‘M’ e valor unitário igual a R$ 1,05 da tabela produto:
SELECT * FROM produtos WHERE unidade = 'M' AND valor_unitario = 1.05;
-- Listar o código, a descrição e o valor unitario dos produtos que tenham o valor unitário na faixa de R$ 0,32 até R$ 2,00:
SELECT  id, descricao, valor_unitario FROM produtos WHERE valor_unitario BETWEEN 0.32 AND 2.00;
-- Listar o código, a descrição e o valor unitario dos produtos que NÃO tenham o valor unitário na faixa de R$ 0,32 até R$ 2,00:
SELECT id, descricao, valor_unitario FROM produtos WHERE valor_unitario NOT BETWEEN 0.32 AND 2.00;
-- Listar os nomes entre Ana e Jorge
select nome FROM clientes WHERE nome BETWEEN 'Ana' AND 'Jorge';
-- Listar os vendedores com faixas de comissão A ou B
SELECT * FROM vendedores WHERE faixa_comissao IN ('A', 'B'); 
-- Listar todos os clientes SEM Inscrição Estadual (IE)
SELECT * FROM clientes WHERE ie IS NULL;
-- Listar todos os clientes COM Inscrição Estadual (IE)
SELECT * FROM clientes WHERE ie is NOT NULL;
-- Listar apenas os dois primeiros vendedores
SELECT * FROM vendedores LIMIT 2;
-- Listar todos os produtos que tenham o seu nome começando por Q:
SELECT * FROM produtos WHERE descricao LIKE 'Q%';
-- Listar os vendedores que não começam por ‘Jo’:
SELECT * FROM vendedores WHERE nome NOT LIKE 'Jo%';
-- Listar todos os produtos cujo nome termina com 's';
SELECT * FROM produtos WHERE descricao LIKE '%s';
-- Listar os produtos que contenham as letras "inh"
SELECT * FROM produtos WHERE descricao LIKE '%inh%';
-- Listar os chocolates e valores 
SELECT descricao, valor_unitario FROM produtos WHERE descricao LIKE '%Chocolate%';
-- Listar os vendedores cuja segunda letra do nome seja 'a'
SELECT * FROM vendedores WHERE nome LIKE '_a%';

-- ORDER BY

-- Listar todos os vendedores ordenados por nome

-- Listar todos os vendedores ordenados por nome de forma descrescente

-- Listar todos os vendedores ordenados por nome e salario 

-- Listar todos os clientes com seus estados, sendo que o estado deverá ser ordenado em ordem crescente e o nome por ordem descrescente

-- Listar todos os vendedores que ganham MENOS de 1000 reais e apresentar em ordem crescente

-- Listar os vendedores que não começam por ‘Jo’ e apresentar ordenado de forma descrescente

-- FUNÇÕES COUNT(), AVG(), SUM(), MIN() e MAX()

-- Informe quantos clientes foram cadastrados

-- Informe quantos produtos tem valor unitário abaixo de 0.50 centavos

-- Informe a média de salario dos vendedores

-- Informe a média de valores unitarios dos produtos vendidos a M

-- Somar o valor de todos os salários

-- Somar o valor dos salarios da comissão A

-- Somar a quantidade de itens de pedidos

-- Informe o menor salario do vendedores

-- Informe o maior salario do vendedores

-- Informe o maior salario do vendedores da faixa de comissão B

-- Listar os nomes entre Ana e Jorge, ordenado de forma descrescente


-- GROUP BY

-- Informe o número de clientes por Estado

-- Informe a média salarial por faixa de comissão

-- Informe a média salarial por faixa de comissão ordenado de forma descrescente por valor


-- HAVING

-- Informe a média salarial por faixa de comissão apenas das faixas com ganho acima de 2000 

-- Informe a média salarial por faixa de comissão apenas das faixas com ganho acima de 2000 ordenado de forma descrescente por valor

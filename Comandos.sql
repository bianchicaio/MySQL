USE sucos_vendas;

SELECT * FROM tabela_de_clientes;

SELECT CPF, NOME FROM tabela_de_clientes;

SELECT * FROM tabela_de_produtos WHERE EMBALAGEM = 'pet';

SELECT * FROM tabela_de_produtos WHERE PRECO_DE_LISTA BETWEEN 19.50 AND 19.52;

SELECT * FROM tabela_de_produtos WHERE (SABOR ='Manga' OR TAMANHO = '470 ml') AND PRECO_DE_LISTA > 5;

SELECT * FROM tabela_de_produtos WHERE SABOR = 'Manga' AND NOT TAMANHO = '470 ml';

SELECT * FROM tabela_de_produtos WHERE SABOR IN ('Laranja', 'Manga', 'Uva');

SELECT * FROM tabela_de_clientes WHERE CIDADE IN ('Rio de Janeiro', 'São Paulo') AND IDADE BETWEEN 20 AND 28;

SELECT * FROM tabela_de_clientes WHERE NOME LIKE '%Mattos';

SELECT * FROM tabela_de_clientes WHERE NOME LIKE '%Silva%';

SELECT * FROM tabela_de_produtos WHERE SABOR LIKE '%Maça%';

SELECT EMBALAGEM, TAMANHO FROM tabela_de_produtos;

SELECT DISTINCT EMBALAGEM, TAMANHO FROM tabela_de_produtos;

SELECT DISTINCT BAIRRO FROM tabela_de_clientes WHERE CIDADE = 'Rio de Janeiro';

SELECT * FROM tabela_de_clientes LIMIT 5;

SELECT * FROM tabela_de_clientes LIMIT 2,4;

SELECT * FROM notas_fiscais WHERE DATA_VENDA = '2017-01-01' LIMIT 10;

SELECT * FROM tabela_de_produtos ORDER BY NOME_DO_PRODUTO;

SELECT * FROM tabela_de_produtos ORDER BY PRECO_DE_LISTA DESC;

SELECT PRECO_DE_LISTA FROM tabela_de_produtos ORDER BY PRECO_DE_LISTA DESC;

SELECT * FROM tabela_de_produtos ORDER BY SABOR DESC, NOME_DO_PRODUTO ASC;

SELECT CODIGO_DO_PRODUTO, NOME_DO_PRODUTO FROM tabela_de_produtos WHERE NOME_DO_PRODUTO LIKE '%Morango%';
SELECT * FROM itens_notas_fiscais WHERE CODIGO_DO_PRODUTO = 1101035 ORDER BY QUANTIDADE DESC;

SELECT ESTADO, LIMITE_DE_CREDITO FROM tabela_de_clientes;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL FROM tabela_de_clientes GROUP BY ESTADO;

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM tabela_de_produtos GROUP BY EMBALAGEM;

SELECT EMBALAGEM, COUNT(*) AS CONTADOR FROM tabela_de_produtos GROUP BY EMBALAGEM;

SELECT ESTADO, BAIRRO, SUM(LIMITE_DE_CREDITO) FROM tabela_de_clientes 
WHERE CIDADE = 'Rio de Janeiro' 
GROUP BY ESTADO, BAIRRO
ORDER BY BAIRRO;

SELECT CODIGO_DO_PRODUTO, COUNT(*) FROM itens_notas_fiscais
WHERE CODIGO_DO_PRODUTO = 1101035 AND QUANTIDADE = 99;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS SOMA_LIMITE FROM tabela_de_clientes
GROUP BY ESTADO HAVING SUM(LIMITE_DE_CREDITO) > 900000;

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO, MIN(PRECO_DE_LISTA) AS MENOR_PRECO FROM tabela_de_produtos
GROUP BY EMBALAGEM HAVING SUM(PRECO_DE_LISTA) <= 80 AND MAX(PRECO_DE_LISTA) >= 5;

SELECT CPF, COUNT(*) FROM notas_fiscais
WHERE YEAR (DATA_VENDA) = 2016
GROUP BY CPF
HAVING COUNT(*) > 2000;

SELECT EMBALAGEM,
CASE 
	WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO'
	WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA'
    ELSE 'PRODUTO BARATO'
END AS STATUS_PRECO, AVG(PRECO_DE_LISTA) AS PRECO_MEDIO
FROM tabela_de_produtos
GROUP BY EMBALAGEM,
CASE 
	WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO'
	WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA'
    ELSE 'PRODUTO BARATO'
END
ORDER BY EMBALAGEM;


SELECT NOME,
CASE
	WHEN YEAR (DATA_DE_NASCIMENTO) < 1990 THEN 'Velho'
    WHEN YEAR (DATA_DE_NASCIMENTO) >= 1990 AND YEAR (DATA_DE_NASCIMENTO) <= 1995 THEN 'Jovem'
    ELSE 'Criança'
END AS CLASSIFICAÇÃO, DATA_DE_NASCIMENTO
FROM tabela_de_clientes;

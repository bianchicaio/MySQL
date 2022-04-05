SELECT * FROM tabela_de_vendedores;
SELECT * FROM notas_fiscais;

SELECT * FROM tabela_de_vendedores A
INNER JOIN notas_fiscais B
ON A.MATRICULA = B.MATRICULA
GROUP BY A.NOME;

SELECT A.MATRICULA, A.NOME, COUNT(*) FROM
tabela_de_vendedores A
INNER JOIN notas_fiscaiS B
ON A.MATRICULA = B.MATRICULA
GROUP BY A.MATRICULA, A.NOME;

SELECT YEAR(DATA_VENDA) AS ANO, SUM(QUANTIDADE * PRECO) AS FATURAMENTO 
FROM notas_fiscais A
INNER JOIN itens_notas_fiscais B
ON A.NUMERO = B.NUMERO
GROUP BY YEAR(DATA_VENDA);

SELECT COUNT(*) FROM tabela_de_clientes;
SELECT CPF, COUNT(*) FROM notas_fiscais GROUP BY CPF;

SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
LEFT JOIN notas_fiscais B
ON A.CPF = B.CPF;

SELECT tabela_de_vendedores.BAIRRO, tabela_de_vendedores.NOME, tabela_de_clientes.BAIRRO, tabela_de_clientes.NOME
FROM tabela_de_vendedores 
INNER JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

SELECT tabela_de_vendedores.BAIRRO, tabela_de_vendedores.NOME, tabela_de_clientes.BAIRRO, tabela_de_clientes.NOME
FROM tabela_de_vendedores 
LEFT JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

SELECT tabela_de_vendedores.BAIRRO, tabela_de_vendedores.NOME, tabela_de_clientes.BAIRRO, tabela_de_clientes.NOME
FROM tabela_de_vendedores 
RIGHT JOIN tabela_de_clientes
ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

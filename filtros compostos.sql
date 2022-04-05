SELECT * FROM tbproduto WHERE EMBALAGEM = 'lata' AND PRECO_LISTA > 1;

SELECT * FROM tbproduto WHERE PRECO_LISTA >= 16.007 AND PRECO_LISTA = 16.009;

SELECT * FROM tbcliente WHERE CIDADE = 'Rio de Janeiro' OR 'São Paulo';

SELECT * FROM tbcliente WHERE (IDADE >= 18 AND CIDADE = 'Rio de Janeiro') OR (IDADE = 22 AND CIDADE = 'São Paulo');


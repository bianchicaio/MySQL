SELECT * FROM produtos;

UPDATE produtos SET PRECO_LISTA = 5 WHERE CODIGO = '1000889';

UPDATE produtos SET EMBALAGEM = 'PET', TAMANHO = '1 litro', DESCRITOR = 'Sabor da Montanha - 1 Litro - Uva' WHERE CODIGO = '1000889';


SELECT * FROM produtos WHERE SABOR = 'Maracujá';

UPDATE produtos SET PRECO_LISTA = PRECO_LISTA * 1.10 WHERE SABOR = 'Maracujá'; 
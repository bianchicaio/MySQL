USE vendas_sucos;

INSERT INTO PRODUTOS (CODIGO, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA)
VALUES ('1040107', 'Light - 350ml - Melancia', 'Melancia', '350ml', 'Lata', 4.56);

INSERT INTO PRODUTOS (CODIGO, DESCRITOR, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA)
VALUES ('1040108', 'Light - 350ml - Graviola', 'Graviola', '350ml', 'Lata', 4);

INSERT INTO PRODUTOS
VALUES ('1040109', 'Light - 350ml - Açai', 'Açai', '350ml', 'Lata', 5.60);

INSERT INTO PRODUTOS
VALUES ('1040110', 'Light - 350ml - Jaca', 'Jaca', '350ml', 'Lata', 6),
       ('1040111', 'Light - 350ml - Manga', 'Manga', '350ml', 'Lata', 3.5);

SELECT * FROM PRODUTOS;
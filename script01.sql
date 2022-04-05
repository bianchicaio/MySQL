SELECT * FROM tbprodutos;

USE sucos;

INSERT INTO tbprodutos (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('544931', 'Frescor do Verão - 350 ml - Limão', 'PET', '350 ml','Limão',3.20);

INSERT INTO tbprodutos (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18);

USE sucos;

UPDATE tbprodutos SET EMBALAGEM = 'Lata', PRECO_LISTA = 2.46
WHERE PRODUTO = '544931';

UPDATE tbprodutos SET EMBALAGEM = 'Garrafa'
WHERE PRODUTO = '1078680';

USE sucos;

DELETE FROM tbprodutos WHERE PRODUTO = '1078680';

USE sucos;

ALTER TABLE tbproduto ADD PRIMARY KEY (PRODUTO);


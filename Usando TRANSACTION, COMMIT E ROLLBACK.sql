START TRANSACTION;

SELECT * FROM VENDEDORES;

UPDATE VENDEDORES SET COMISSAO = COMISSAO * 1.15;

ROLLBACK;
COMMIT;

START TRANSACTION;

INSERT INTO `vendas_sucos`.`vendedores`
(`MATRICULA`,
`NOME`,
`BAIRRO`,
`COMISSAO`,
`DATA_ADMISSAO`,
`FERIAS`)
VALUES
('999',
'Joao da Silva',
'Icarai',
0.08,
'2012-01-15',
0);

SELECT * FROM VENDEDORES;

ROLLBACK;
COMMIT;
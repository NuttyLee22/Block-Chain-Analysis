USE polimero;

SELECT count(*) FROM grupo;
SELECT count(*) FROM uf;
SELECT count(*) FROM municipio;
SELECT count(*) FROM endereco;
SELECT count(*) FROM familia;
SELECT count(*) FROM linha;
SELECT count(*) FROM operacao;
SELECT count(*) FROM uso;
SELECT count(*) FROM produto;
SELECT count(*) FROM transportadora;

describe transportadora;
alter table transportadora
modify column CNPJ varchar(18);

describe cliente;
alter table cliente
modify column CNPJ varchar(20);

SET SQL_SAFE_UPDATES = 0;
delete from cliente where cliente_numero is not null;

SELECT count(*) FROM cliente;
-- perda de 2 registros de cliente devido a campo de FK nulo

SELECT count(*) FROM pedidovendaitem;
-- delete from pedidovendaitem;

-- Erro na hora de inserir dados em pedidovendaitem, por nao encontrar os valores da FK na PK da tabela Produto
-- Row import failed with error: ('Cannot add or update a child row: a foreign key constraint fails (`polimero`.`pedidovendaitem`, CONSTRAINT `fk_PedidoVendaItem_Produto1` FOREIGN KEY (`Produto_numero`) REFERENCES `produto` (`Produto_numero`))', 1452)

select count(*) from pedidovendaitem;

select count(*) from pedidovenda;

-- os erros de FK pode ser por ter FK de numero de produto em decimal... sendo que a PK de produto é int
describe produto;
describe pedidovenda;

delete from pedidovenda;

alter table pedidovenda
modify column Pedido_numero Int not null primary key; -- erro

-- criar novamente a tabela

DROP TABLE IF EXISTS `polimero`.`PedidoVenda` ;

DROP TABLE IF EXISTS `polimero`.`PedidoVendaItem` ;


select * from PedidoVendaItem;
select * from PedidoVenda;

-- alguns registros continuam se perdendo por nao ter PK e FK correspondentes
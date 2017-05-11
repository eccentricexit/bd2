DROP TABLE IF EXISTS cliente;
CREATE TABLE cliente (id_cliente INTEGER PRIMARY KEY AUTOINCREMENT, nome VARCHAR (100) NOT NULL, cpf VARCHAR (10) NOT NULL, telefone VARCHAR (9) NOT NULL, endereco VARCHAR (200) NOT NULL);
INSERT INTO cliente (id_cliente, nome, cpf, telefone, endereco) VALUES (1, 'Carlos', '7777', '1234-1234', 'Rua jose cobra, 101');
INSERT INTO cliente (id_cliente, nome, cpf, telefone, endereco) VALUES (2, 'Clarissa', '8888', '5555-3434', 'Avenida Ademar de Barros , 302');
INSERT INTO cliente (id_cliente, nome, cpf, telefone, endereco) VALUES (3, 'Elisa', '414141', '3232-1212', 'Rua das Flores, 201');
INSERT INTO cliente (id_cliente, nome, cpf, telefone, endereco) VALUES (4, 'Maria', '9090', '9090-9090', 'Rua jose antonio, 156');
INSERT INTO cliente (id_cliente, nome, cpf, telefone, endereco) VALUES (5, 'Ugo', '3490', '2323-1256', 'Avenida Onze de Agosto, 23');
INSERT INTO cliente (id_cliente, nome, cpf, telefone, endereco) VALUES (6, 'Olavo', '5990', '1111-4444', 'Rua Jose Bissoto, 22');

-- Table: ItemPedido
DROP TABLE IF EXISTS ItemPedido;
CREATE TABLE ItemPedido (id_item_pedido INTEGER PRIMARY KEY AUTOINCREMENT, quantidade INTEGER (4) NOT NULL, valor_sub_total INTEGER (10, 2) NOT NULL, id_pedido_flc INTEGER (10) REFERENCES Pedido (id_pedido), id_produto_flc INTEGER (10) REFERENCES Produto (id_produto));
INSERT INTO ItemPedido (id_item_pedido, quantidade, valor_sub_total, id_pedido_flc, id_produto_flc) VALUES (30, 5, '6.5', 10, 50);
INSERT INTO ItemPedido (id_item_pedido, quantidade, valor_sub_total, id_pedido_flc, id_produto_flc) VALUES (31, 1, '5.5', 11, 52);
INSERT INTO ItemPedido (id_item_pedido, quantidade, valor_sub_total, id_pedido_flc, id_produto_flc) VALUES (32, 5, '3.5', 11, 53);
INSERT INTO ItemPedido (id_item_pedido, quantidade, valor_sub_total, id_pedido_flc, id_produto_flc) VALUES (33, 3, '16.5', 12, 52);
INSERT INTO ItemPedido (id_item_pedido, quantidade, valor_sub_total, id_pedido_flc, id_produto_flc) VALUES (100, 5, '27.5', 1, 52);
INSERT INTO ItemPedido (id_item_pedido, quantidade, valor_sub_total, id_pedido_flc, id_produto_flc) VALUES (101, 2, '1.4', 1, 53);
INSERT INTO ItemPedido (id_item_pedido, quantidade, valor_sub_total, id_pedido_flc, id_produto_flc) VALUES (150, 10, '33.5', 15, 54);

-- Table: Pedido
DROP TABLE IF EXISTS Pedido;
CREATE TABLE Pedido (id_pedido INTEGER PRIMARY KEY AUTOINCREMENT, valor_total INTEGER (10, 2) NOT NULL, data TEXT NOT NULL, id_cliente_flc INTEGER REFERENCES cliente (id_cliente));
INSERT INTO Pedido (id_pedido, valor_total, data, id_cliente_flc) VALUES (10, '6.5', '10/10/2014', 1);
INSERT INTO Pedido (id_pedido, valor_total, data, id_cliente_flc) VALUES (11, 9, '01/10/2014', 3);
INSERT INTO Pedido (id_pedido, valor_total, data, id_cliente_flc) VALUES (12, '16.5', '20/10/2014', 5);
INSERT INTO Pedido (id_pedido, valor_total, data, id_cliente_flc) VALUES (15, '33.5', '19/02/2016', 66);
INSERT INTO Pedido (id_pedido, valor_total, data, id_cliente_flc) VALUES (1, '28.9', '12/01/2015', 4);


-- Table: Produto
DROP TABLE IF EXISTS Produto;
CREATE TABLE Produto (id_produto INTEGER PRIMARY KEY AUTOINCREMENT, descricao VARCHAR (100) NOT NULL, preco REAL NOT NULL);
INSERT INTO Produto (id_produto, descricao, preco) VALUES (50, 'caneta', '1.3');
INSERT INTO Produto (id_produto, descricao, preco) VALUES (51, 'Lapis', '1.2');
INSERT INTO Produto (id_produto, descricao, preco) VALUES (52, 'Caderno', '5.5');
INSERT INTO Produto (id_produto, descricao, preco) VALUES (53, 'Brracha', '0.7');
INSERT INTO Produto (id_produto, descricao, preco) VALUES (54, 'Apagador', '3.35');

--Exe 1, Aula 2
select * from Produto where preco > 2;
select * from Produto where descricao like '%r%';
select * from Pedido where valor_total > 10;
select * from ItemPedido where quantidade > 10;
select id_item_pedido from ItemPedido where valor_sub_total > 5 and quantidade >= 2;
SELECT nome,telefone from cliente ;
SELECT nome,cpf,telefone from cliente where nome LIKE '_%s%_';
SELECT * FROM cliente where endereco like "_%on%_";
SELECT nome,endereco FROM Cliente WHERE endereco like '%156%';
CREATE TABLE IF NOT EXISTS produtos(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(60) NOT NULL    
);

ALTER TABLE produtos ADD COLUMN preco NUMERIC(10,2) NOT NULL;

CREATE TABLE IF NOT EXISTS vendas(
	id INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT NOT NULL,
    qtd_venda NUMERIC(10,2) NOT NULL,
    data_venda TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE vendas ADD CONSTRAINT fk_vendas_produtos FOREIGN KEY(id_produto) REFERENCES produtos(id); 

INSERT INTO produtos (nome, preco) VALUES ('feijão', 5.50);
INSERT INTO produtos (nome, preco) VALUES ('arroz', 7.80);
INSERT INTO produtos (nome, preco) VALUES ('farinha', 10.50);
INSERT INTO produtos (nome, preco) VALUES ('milho', 3.20);
INSERT INTO produtos (nome, preco) VALUES ('batata', 1.20);
INSERT INTO produtos (nome, preco) VALUES ('chocolate', 4.99);
INSERT INTO produtos (nome, preco) VALUES ('pastel', 2.00);
INSERT INTO produtos (nome, preco) VALUES ('bolacha', 3.50);
INSERT INTO produtos (nome, preco) VALUES ('fermento', 4.50);

SELECT * FROM produtos;

INSERT INTO vendas (id_produto, qtd_venda) VALUES (3, 5);
INSERT INTO vendas (id_produto, qtd_venda) VALUES (3, 4);
INSERT INTO vendas (id_produto, qtd_venda) VALUES (5, 1);
INSERT INTO vendas (id_produto, qtd_venda) VALUES (6, 9);
INSERT INTO vendas (id_produto, qtd_venda) VALUES (10, 10);
INSERT INTO vendas (id_produto, qtd_venda) VALUES (11, 15);
INSERT INTO vendas (id_produto, qtd_venda) VALUES (9, 5);
INSERT INTO vendas (id_produto, qtd_venda) VALUES (7, 3);
INSERT INTO vendas (id_produto, qtd_venda) VALUES (11, 1);
INSERT INTO vendas (id_produto, qtd_venda) VALUES (6, 8);
INSERT INTO vendas (id_produto, qtd_venda) VALUES (3, 1);
INSERT INTO vendas (id_produto, qtd_venda) VALUES (9, 1);
INSERT INTO vendas (id_produto, qtd_venda) VALUES (7, 0.7);
INSERT INTO vendas (id_produto, qtd_venda) VALUES (4, 5);
INSERT INTO vendas (id_produto, qtd_venda) VALUES (8, 15);
INSERT INTO vendas (id_produto, qtd_venda) VALUES (10, 1);
INSERT INTO vendas (id_produto, qtd_venda) VALUES (11, 1);

SELECT * FROM vendas;
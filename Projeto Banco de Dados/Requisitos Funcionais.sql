-- Cadastro de pedidos
INSERT INTO clientes(Nome, Telefone, Email)
VALUES(
    "Arthur Moura Reis",
    " +55 48-9 9655-4166",
    "amouraeis6@gmail.com"
);
INSERT INTO funcionarios(cargo, Nome, telefone) VALUES(
	"garçom", "Paulo", "+55 48-4002-8922"
);
INSERT INTO mesas(capacidade, numero,status
)
VALUES("10", "50", "disponível");
INSERT INTO pedidos(
    data_hora,
    id_cliente,
    id_funcionario,
    id_mesa,
    status
)
VALUES(
	"28/10/2024 19:30","1","1","1","concluído"	
);

-- Cadastro de pratos
INSERT INTO cardapio(descricao, nome)
VALUES(
    "Cremoso e repleto de sabor.",
    "Bobó de Camarão"
);
INSERT INTO pratos(
    descricao,
    Id_cardapio,
    nome,
    preco
)
VALUES(
    "Cremoso e repleto de sabor.",
    "1",
    "Bobó de Camarão",
    "49.99"
);

-- Consulta mesas disponíveis
SELECT
    COUNT(*) AS quantidade_mesas_disponiveis
FROM
    mesas
WHERE
STATUS
    = "disponível";

-- Controle de estoque/insumos
INSERT INTO insumos (nome, quantidade, unidade) VALUES ('Camarão', 100, 10);

SELECT * FROM insumos;
SELECT * FROM insumos WHERE quantidade > 0;

UPDATE insumos SET quantidade = 99 WHERE nome = "Camarão";

DELETE FROM insumos WHERE nome = "Camarão";
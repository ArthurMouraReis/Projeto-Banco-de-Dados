-- Adiciona campo de salário na tabela de funcionarios, vai ser usado para calcular a folha de pagamento
ALTER TABLE funcionarios ADD salario DECIMAL;

-- Atualiza salário do funcionário inserido antes
UPDATE funcionarios SET salario = 2100 WHERE id = 1;

-- Relatório de pagamentos agrupados por cargo
SELECT nome, cargo, SUM(salario) AS total FROM funcionarios GROUP BY cargo;

-- Adiciona tabela do estacionamento
CREATE TABLE vagas_estacionamento(
    id INT PRIMARY KEY AUTO_INCREMENT,
    STATUS ENUM
        ('livre', 'ocupada') DEFAULT 'livre'
);

-- Adicionar tabela de avaliações dos clientes em relação ao atendimento
CREATE TABLE avalicoes(
    id INT PRIMARY KEY AUTO_INCREMENT,
    avaliacao INT NOT NULL,
    pedido_id INT NOT NULL,
    FOREIGN KEY(pedido_id) REFERENCES pedidos(id)
);

CREATE TABLE pagamentos_funcionario(
    id INT PRIMARY KEY AUTO_INCREMENT,
    valor DECIMAL NOT NULL,
    funcionario_id INT NOT NULL,
    FOREIGN KEY(funcionario_id) REFERENCES funcionarios(id),
    data_efetuacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM
        ('pendente', 'efetuado') DEFAULT 'pendente'
);

CREATE TABLE pagamentos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    forma_pagamento ENUM('Pix', 'Dinheiro', 'Cartão Débito', 'Cartão Crédito') NOT NULL,
    valor DECIMAL NOT NULL,
    pedido_id INT NOT NULL,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
    cliente_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    data_pagamento TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
riação do banco de dados
CREATE DATABASE RestauranteDB;
USE RestauranteDB;

-- Tabela para Clientes
CREATE TABLE Clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100)
);

-- Tabela para Funcionários
CREATE TABLE Funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    telefone VARCHAR(15)
);

-- Tabela para Mesas
CREATE TABLE Mesas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero INT NOT NULL,
    capacidade INT NOT NULL,
    status ENUM('disponível', 'ocupada') DEFAULT 'disponível'
);

-- Tabela para Insumos
CREATE TABLE Insumos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL,
    unidade VARCHAR(20) NOT NULL
);

-- Tabela para Cardápio
CREATE TABLE Cardapio (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);

-- Tabela para Pratos
CREATE TABLE Pratos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cardapio INT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_cardapio) REFERENCES Cardapio(id)
);

-- Tabela para Pedidos
CREATE TABLE Pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_mesa INT,
    id_funcionario INT,
    data_hora DATETIME DEFAULT CURRENT_TIMESTAMP,
    status ENUM('pendente', 'concluído', 'cancelado') DEFAULT 'pendente',
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id),
    FOREIGN KEY (id_mesa) REFERENCES Mesas(id),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionarios(id)
);

-- Tabela para Itens do Pedido (relaciona pratos com pedidos)
CREATE TABLE Itens_Pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_prato INT,
    quantidade INT NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id),
    FOREIGN KEY (id_prato) REFERENCES Pratos(id)
);

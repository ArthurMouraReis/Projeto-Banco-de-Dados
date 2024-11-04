--
-- Banco de dados: `bd_restaurante`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `avalicoes`
--

CREATE TABLE `avalicoes` (
  `id` int(11) NOT NULL,
  `avaliacao` int(11) NOT NULL,
  `pedido_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `avalicoes`
--

INSERT INTO `avalicoes` (`id`, `avaliacao`, `pedido_id`) VALUES
(1, 5, 1),
(2, 5, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cardapio`
--

CREATE TABLE `cardapio` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cardapio`
--

INSERT INTO `cardapio` (`id`, `nome`, `descricao`) VALUES
(1, 'Bobó de Camarão', 'Cremoso e repleto de sabor.'),
(2, 'Almoço Executivo', 'Prato do dia com entrada e sobremesa.'),
(3, 'Jantar Especial', 'Menu especial para jantares.'),
(4, 'Lanches Rápidos', 'Sanduíches e porções para lanches.'),
(5, 'Menu Kids', 'Pratos especiais para crianças.'),
(6, 'Feijoada', 'Tradicional feijoada brasileira.'),
(7, 'Pizza Artesanal', 'Pizza feita com ingredientes frescos.'),
(8, 'Churrasco', 'Churrasco variado com acompanhamentos.'),
(9, 'Sushi', 'Sushi e sashimi frescos.'),
(10, 'Saladas', 'Variadas opções de saladas.'),
(11, 'Bebidas', 'Bebidas variadas: refrigerantes, sucos e água.'),
(12, 'Sobremesas', 'Sobremesas caseiras e especiais.'),
(13, 'Massa', 'Pratos de massas com molho ao seu gosto.'),
(14, 'Ceviche', 'Ceviche de peixe fresco.'),
(15, 'Costela Assada', 'Costela suculenta assada lentamente.'),
(16, 'Risoto', 'Risoto com ingredientes sazonais.'),
(17, 'Tacos', 'Tacos mexicanos com variados recheios.'),
(18, 'Burguer', 'Hambúrgueres gourmet com opções vegetarianas.'),
(19, 'Crepes', 'Crepes doces e salgados.'),
(20, 'Batatas Fritas', 'Batatas fritas crocantes.'),
(21, 'Ceviche de Frutos do Mar', 'Ceviche variado de frutos do mar.'),
(22, 'Café da Manhã', 'Café da manhã variado e saudável.'),
(23, 'Almoço Executivo', 'Prato do dia com entrada e sobremesa.'),
(24, 'Jantar Especial', 'Menu especial para jantares.'),
(25, 'Lanches Rápidos', 'Sanduíches e porções para lanches.'),
(26, 'Menu Kids', 'Pratos especiais para crianças.'),
(27, 'Feijoada', 'Tradicional feijoada brasileira.'),
(28, 'Pizza Artesanal', 'Pizza feita com ingredientes frescos.'),
(29, 'Churrasco', 'Churrasco variado com acompanhamentos.'),
(30, 'Sushi', 'Sushi e sashimi frescos.'),
(31, 'Saladas', 'Variadas opções de saladas.'),
(32, 'Bebidas', 'Bebidas variadas: refrigerantes, sucos e água.'),
(33, 'Sobremesas', 'Sobremesas caseiras e especiais.'),
(34, 'Massa', 'Pratos de massas com molho ao seu gosto.'),
(35, 'Ceviche', 'Ceviche de peixe fresco.'),
(36, 'Costela Assada', 'Costela suculenta assada lentamente.'),
(37, 'Risoto', 'Risoto com ingredientes sazonais.'),
(38, 'Tacos', 'Tacos mexicanos com variados recheios.'),
(39, 'Burguer', 'Hambúrgueres gourmet com opções vegetarianas.'),
(40, 'Crepes', 'Crepes doces e salgados.'),
(41, 'Batatas Fritas', 'Batatas fritas crocantes.'),
(42, 'Ceviche de Frutos do Mar', 'Ceviche variado de frutos do mar.'),
(43, 'Café da Manhã', 'Café da manhã variado e saudável.'),
(44, 'Almoço Executivo', 'Prato do dia com entrada e sobremesa.'),
(45, 'Jantar Especial', 'Menu especial para jantares.'),
(46, 'Lanches Rápidos', 'Sanduíches e porções para lanches.'),
(47, 'Menu Kids', 'Pratos especiais para crianças.'),
(48, 'Feijoada', 'Tradicional feijoada brasileira.'),
(49, 'Pizza Artesanal', 'Pizza feita com ingredientes frescos.'),
(50, 'Churrasco', 'Churrasco variado com acompanhamentos.'),
(51, 'Sushi', 'Sushi e sashimi frescos.'),
(52, 'Saladas', 'Variadas opções de saladas.'),
(53, 'Bebidas', 'Bebidas variadas: refrigerantes, sucos e água.'),
(54, 'Sobremesas', 'Sobremesas caseiras e especiais.'),
(55, 'Massa', 'Pratos de massas com molho ao seu gosto.'),
(56, 'Ceviche', 'Ceviche de peixe fresco.'),
(57, 'Costela Assada', 'Costela suculenta assada lentamente.'),
(58, 'Risoto', 'Risoto com ingredientes sazonais.'),
(59, 'Tacos', 'Tacos mexicanos com variados recheios.'),
(60, 'Burguer', 'Hambúrgueres gourmet com opções vegetarianas.'),
(61, 'Crepes', 'Crepes doces e salgados.'),
(62, 'Batatas Fritas', 'Batatas fritas crocantes.'),
(63, 'Ceviche de Frutos do Mar', 'Ceviche variado de frutos do mar.'),
(64, 'Café da Manhã', 'Café da manhã variado e saudável.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `telefone`, `email`) VALUES
(1, 'Arthur Moura Reis', ' +55 48-9 9655-', 'amouraeis6@gmail.com'),
(2, 'João Silva', '11987654321', 'joao.silva@email.com'),
(3, 'Maria Oliveira', '21987654321', 'maria.oliveira@email.com'),
(4, 'Pedro Santos', '31987654321', 'pedro.santos@email.com'),
(5, 'Ana Costa', '41987654321', 'ana.costa@email.com'),
(6, 'Lucas Almeida', '51987654321', 'lucas.almeida@email.com'),
(7, 'Fernanda Lima', '61987654321', 'fernanda.lima@email.com'),
(8, 'Carlos Pereira', '71987654321', 'carlos.pereira@email.com'),
(9, 'Mariana Rocha', '81987654321', 'mariana.rocha@email.com'),
(10, 'Roberto Dias', '91987654321', 'roberto.dias@email.com'),
(11, 'Juliana Martins', '11996543210', 'juliana.martins@email.com'),
(12, 'Ricardo Gomes', '21996543210', 'ricardo.gomes@email.com'),
(13, 'Tatiane Souza', '31996543210', 'tatiane.souza@email.com'),
(14, 'Rafael Teixeira', '41996543210', 'rafael.teixeira@email.com'),
(15, 'Bruna Fernandes', '51996543210', 'bruna.fernandes@email.com'),
(16, 'Thiago Cardoso', '61996543210', 'thiago.cardoso@email.com'),
(17, 'Lívia Araújo', '71996543210', 'livia.araujo@email.com'),
(18, 'Daniel Silva', '81996543210', 'daniel.silva@email.com'),
(19, 'Luana Martins', '91996543210', 'luana.martins@email.com'),
(20, 'Gabriel Santos', '11985432100', 'gabriel.santos@email.com'),
(21, 'Bianca Oliveira', '21985432100', 'bianca.oliveira@email.com'),
(22, 'Fábio Gomes', '31985432100', 'fabio.gomes@email.com'),
(23, 'Cíntia Rocha', '41985432100', 'cintia.rocha@email.com'),
(24, 'Fernando Costa', '51985432100', 'fernando.costa@email.com'),
(25, 'Rita Almeida', '61985432100', 'rita.almeida@email.com'),
(26, 'Vinícius Pereira', '71985432100', 'vinicius.pereira@email.com'),
(27, 'Natália Lima', '81985432100', 'natalia.lima@email.com'),
(28, 'Diego Dias', '91985432100', 'diego.dias@email.com'),
(29, 'Juliana Mendes', '11975321000', 'juliana.mendes@email.com'),
(30, 'Samuel Teixeira', '21975321000', 'samuel.teixeira@email.com'),
(31, 'Camila Souza', '31975321000', 'camila.souza@email.com'),
(32, 'João Silva', '11987654321', 'joao.silva@email.com'),
(33, 'Maria Oliveira', '21987654321', 'maria.oliveira@email.com'),
(34, 'Pedro Santos', '31987654321', 'pedro.santos@email.com'),
(35, 'Ana Costa', '41987654321', 'ana.costa@email.com'),
(36, 'Lucas Almeida', '51987654321', 'lucas.almeida@email.com'),
(37, 'Fernanda Lima', '61987654321', 'fernanda.lima@email.com'),
(38, 'Carlos Pereira', '71987654321', 'carlos.pereira@email.com'),
(39, 'Mariana Rocha', '81987654321', 'mariana.rocha@email.com'),
(40, 'Roberto Dias', '91987654321', 'roberto.dias@email.com'),
(41, 'Juliana Martins', '11996543210', 'juliana.martins@email.com'),
(42, 'Ricardo Gomes', '21996543210', 'ricardo.gomes@email.com'),
(43, 'Tatiane Souza', '31996543210', 'tatiane.souza@email.com'),
(44, 'Rafael Teixeira', '41996543210', 'rafael.teixeira@email.com'),
(45, 'Bruna Fernandes', '51996543210', 'bruna.fernandes@email.com'),
(46, 'Thiago Cardoso', '61996543210', 'thiago.cardoso@email.com'),
(47, 'Lívia Araújo', '71996543210', 'livia.araujo@email.com'),
(48, 'Daniel Silva', '81996543210', 'daniel.silva@email.com'),
(49, 'Luana Martins', '91996543210', 'luana.martins@email.com'),
(50, 'Gabriel Santos', '11985432100', 'gabriel.santos@email.com'),
(51, 'Bianca Oliveira', '21985432100', 'bianca.oliveira@email.com'),
(52, 'Fábio Gomes', '31985432100', 'fabio.gomes@email.com'),
(53, 'Cíntia Rocha', '41985432100', 'cintia.rocha@email.com'),
(54, 'Fernando Costa', '51985432100', 'fernando.costa@email.com'),
(55, 'Rita Almeida', '61985432100', 'rita.almeida@email.com'),
(56, 'Vinícius Pereira', '71985432100', 'vinicius.pereira@email.com'),
(57, 'Natália Lima', '81985432100', 'natalia.lima@email.com'),
(58, 'Diego Dias', '91985432100', 'diego.dias@email.com'),
(59, 'Juliana Mendes', '11975321000', 'juliana.mendes@email.com'),
(60, 'Samuel Teixeira', '21975321000', 'samuel.teixeira@email.com'),
(61, 'Camila Souza', '31975321000', 'camila.souza@email.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `salario` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`, `cargo`, `telefone`, `salario`) VALUES
(1, 'Paulo', 'garçom', '+55 48-4002-892', 2100),
(2, 'Carlos Alberto', 'Gerente', '11987654321', NULL),
(3, 'Sandra Mendes', 'Cozinheira', '21987654321', NULL),
(4, 'Fábio Costa', 'Garçom', '31987654321', NULL),
(5, 'Juliana Santos', 'Recepcionista', '41987654321', NULL),
(6, 'Roberto Lima', 'Cozinheiro', '51987654321', NULL),
(7, 'Ana Paula', 'Atendente', '61987654321', NULL),
(8, 'Marcio Rocha', 'Garçom', '71987654321', NULL),
(9, 'Tatiane Almeida', 'Gerente', '81987654321', NULL),
(10, 'Luiz Gustavo', 'Cozinheiro', '91987654321', NULL),
(11, 'Fernanda Teixeira', 'Garçonete', '11996543210', NULL),
(12, 'Ricardo Dias', 'Recepcionista', '21996543210', NULL),
(13, 'Rafaela Oliveira', 'Atendente', '31996543210', NULL),
(14, 'Gustavo Silva', 'Gerente', '41996543210', NULL),
(15, 'Luciana Costa', 'Cozinheira', '51996543210', NULL),
(16, 'André Ferreira', 'Garçom', '61996543210', NULL),
(17, 'Patrícia Lima', 'Garçonete', '71996543210', NULL),
(18, 'Felipe Santos', 'Atendente', '81996543210', NULL),
(19, 'Natalia Rocha', 'Gerente', '91996543210', NULL),
(20, 'Daniela Almeida', 'Recepcionista', '11985432100', NULL),
(21, 'Mariana Teixeira', 'Cozinheira', '21985432100', NULL),
(22, 'Leonardo Gomes', 'Garçom', '31985432100', NULL),
(23, 'Priscila Mendes', 'Atendente', '41985432100', NULL),
(24, 'Anderson Costa', 'Cozinheiro', '51985432100', NULL),
(25, 'Bianca Santos', 'Recepcionista', '61985432100', NULL),
(26, 'Tatiane Lima', 'Garçom', '71985432100', NULL),
(27, 'Thiago Almeida', 'Garçonete', '81985432100', NULL),
(28, 'Sérgio Rocha', 'Gerente', '91985432100', NULL),
(29, 'Cláudia Teixeira', 'Cozinheira', '11975321000', NULL),
(30, 'Julio Mendes', 'Atendente', '21975321000', NULL),
(31, 'César Dias', 'Recepcionista', '31975321000', NULL),
(32, 'Carlos Alberto', 'Gerente', '11987654321', NULL),
(33, 'Sandra Mendes', 'Cozinheira', '21987654321', NULL),
(34, 'Fábio Costa', 'Garçom', '31987654321', NULL),
(35, 'Juliana Santos', 'Recepcionista', '41987654321', NULL),
(36, 'Roberto Lima', 'Cozinheiro', '51987654321', NULL),
(37, 'Ana Paula', 'Atendente', '61987654321', NULL),
(38, 'Marcio Rocha', 'Garçom', '71987654321', NULL),
(39, 'Tatiane Almeida', 'Gerente', '81987654321', NULL),
(40, 'Luiz Gustavo', 'Cozinheiro', '91987654321', NULL),
(41, 'Fernanda Teixeira', 'Garçonete', '11996543210', NULL),
(42, 'Ricardo Dias', 'Recepcionista', '21996543210', NULL),
(43, 'Rafaela Oliveira', 'Atendente', '31996543210', NULL),
(44, 'Gustavo Silva', 'Gerente', '41996543210', NULL),
(45, 'Luciana Costa', 'Cozinheira', '51996543210', NULL),
(46, 'André Ferreira', 'Garçom', '61996543210', NULL),
(47, 'Patrícia Lima', 'Garçonete', '71996543210', NULL),
(48, 'Felipe Santos', 'Atendente', '81996543210', NULL),
(49, 'Natalia Rocha', 'Gerente', '91996543210', NULL),
(50, 'Daniela Almeida', 'Recepcionista', '11985432100', NULL),
(51, 'Mariana Teixeira', 'Cozinheira', '21985432100', NULL),
(52, 'Leonardo Gomes', 'Garçom', '31985432100', NULL),
(53, 'Priscila Mendes', 'Atendente', '41985432100', NULL),
(54, 'Anderson Costa', 'Cozinheiro', '51985432100', NULL),
(55, 'Bianca Santos', 'Recepcionista', '61985432100', NULL),
(56, 'Tatiane Lima', 'Garçom', '71985432100', NULL),
(57, 'Thiago Almeida', 'Garçonete', '81985432100', NULL),
(58, 'Sérgio Rocha', 'Gerente', '91985432100', NULL),
(59, 'Cláudia Teixeira', 'Cozinheira', '11975321000', NULL),
(60, 'Julio Mendes', 'Atendente', '21975321000', NULL),
(61, 'César Dias', 'Recepcionista', '31975321000', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `insumos`
--

CREATE TABLE `insumos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `unidade` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `insumos`
--

INSERT INTO `insumos` (`id`, `nome`, `quantidade`, `unidade`) VALUES
(1, 'Arroz', 50, 'kg'),
(2, 'Feijão', 40, 'kg'),
(3, 'Carne', 30, 'kg'),
(4, 'Frango', 25, 'kg'),
(5, 'Peixe', 20, 'kg'),
(6, 'Batata', 60, 'kg'),
(7, 'Cebola', 45, 'kg'),
(8, 'Alho', 15, 'kg'),
(9, 'Tomate', 35, 'kg'),
(10, 'Cenoura', 30, 'kg'),
(11, 'Pão', 100, 'unidade'),
(12, 'Queijo', 20, 'kg'),
(13, 'Presunto', 15, 'kg'),
(14, 'Manteiga', 10, 'kg'),
(15, 'Ovo', 200, 'unidade'),
(16, 'Leite', 30, 'litro'),
(17, 'Açúcar', 50, 'kg'),
(18, 'Sal', 25, 'kg'),
(19, 'Pimenta', 5, 'kg'),
(20, 'Óleo', 50, 'litro'),
(21, 'Vinagre', 10, 'litro'),
(22, 'Molho de tomate', 15, 'litro'),
(23, 'Maionese', 10, 'kg'),
(24, 'Ketchup', 5, 'kg'),
(25, 'Mostarda', 5, 'kg'),
(26, 'Ervas finas', 2, 'kg'),
(27, 'Pasta de dente', 10, 'kg'),
(28, 'Café', 15, 'kg'),
(29, 'Chá', 10, 'kg'),
(30, 'Sorvete', 20, 'litro'),
(31, 'Refrigerante', 50, 'litro');

-- --------------------------------------------------------

--
-- Estrutura para tabela `itens_pedido`
--

CREATE TABLE `itens_pedido` (
  `id` int(11) NOT NULL,
  `id_pedido` int(11) DEFAULT NULL,
  `id_prato` int(11) DEFAULT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `itens_pedido`
--

INSERT INTO `itens_pedido` (`id`, `id_pedido`, `id_prato`, `quantidade`) VALUES
(1, 1, 1, 2),
(2, 2, 2, 1),
(3, 3, 3, 3),
(4, 4, 4, 1),
(5, 5, 5, 2),
(6, 6, 6, 3),
(7, 7, 7, 1),
(8, 8, 8, 2),
(9, 9, 9, 1),
(10, 10, 10, 2),
(11, 11, 11, 3),
(12, 12, 12, 1),
(13, 13, 13, 2),
(14, 14, 14, 1),
(15, 15, 15, 3),
(16, 16, 16, 2),
(17, 17, 17, 1),
(18, 18, 18, 3),
(19, 19, 19, 2),
(20, 20, 20, 1),
(21, 21, 21, 3),
(22, 22, 22, 2),
(23, 23, 23, 1),
(24, 24, 24, 3),
(25, 25, 25, 2),
(26, 26, 26, 1),
(27, 27, 27, 3),
(28, 28, 28, 2),
(29, 29, 29, 1),
(30, 30, 30, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `mesas`
--

CREATE TABLE `mesas` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `capacidade` int(11) NOT NULL,
  `status` enum('disponível','ocupada') DEFAULT 'disponível'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `mesas`
--

INSERT INTO `mesas` (`id`, `numero`, `capacidade`, `status`) VALUES
(1, 50, 10, 'disponível'),
(2, 1, 4, 'disponível'),
(3, 2, 2, 'disponível'),
(4, 3, 6, 'ocupada'),
(5, 4, 4, 'disponível'),
(6, 5, 8, 'ocupada'),
(7, 6, 4, 'disponível'),
(8, 7, 2, 'ocupada'),
(9, 8, 6, 'disponível'),
(10, 9, 4, 'ocupada'),
(11, 10, 2, 'disponível'),
(12, 11, 6, 'ocupada'),
(13, 12, 8, 'disponível'),
(14, 13, 4, 'ocupada'),
(15, 14, 2, 'disponível'),
(16, 15, 6, 'ocupada'),
(17, 16, 4, 'disponível'),
(18, 17, 8, 'ocupada'),
(19, 18, 4, 'disponível'),
(20, 19, 2, 'ocupada'),
(21, 20, 6, 'disponível'),
(22, 21, 4, 'ocupada'),
(23, 22, 2, 'disponível'),
(24, 23, 8, 'ocupada'),
(25, 24, 4, 'disponível'),
(26, 25, 6, 'ocupada'),
(27, 26, 2, 'disponível'),
(28, 27, 4, 'ocupada'),
(29, 28, 8, 'disponível'),
(30, 29, 4, 'ocupada');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_mesa` int(11) DEFAULT NULL,
  `id_funcionario` int(11) DEFAULT NULL,
  `data_hora` datetime DEFAULT current_timestamp(),
  `status` enum('pendente','concluído','cancelado') DEFAULT 'pendente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `id_cliente`, `id_mesa`, `id_funcionario`, `data_hora`, `status`) VALUES
(1, 1, 1, 1, '0000-00-00 00:00:00', 'concluído'),
(2, 1, 1, 1, '2024-10-30 08:18:34', 'pendente'),
(3, 2, 2, 2, '2024-10-30 08:18:34', 'pendente'),
(4, 3, 3, 3, '2024-10-30 08:18:34', 'pendente'),
(5, 4, 4, 4, '2024-10-30 08:18:34', 'pendente'),
(6, 5, 5, 5, '2024-10-30 08:18:34', 'pendente'),
(7, 6, 6, 6, '2024-10-30 08:18:34', 'pendente'),
(8, 7, 7, 7, '2024-10-30 08:18:34', 'pendente'),
(9, 8, 8, 8, '2024-10-30 08:18:34', 'pendente'),
(10, 9, 9, 9, '2024-10-30 08:18:34', 'pendente'),
(11, 10, 10, 10, '2024-10-30 08:18:34', 'pendente'),
(12, 11, 11, 11, '2024-10-30 08:18:34', 'pendente'),
(13, 12, 12, 12, '2024-10-30 08:18:34', 'pendente'),
(14, 13, 13, 13, '2024-10-30 08:18:34', 'pendente'),
(15, 14, 14, 14, '2024-10-30 08:18:34', 'pendente'),
(16, 15, 15, 15, '2024-10-30 08:18:34', 'pendente'),
(17, 16, 16, 16, '2024-10-30 08:18:34', 'pendente'),
(18, 17, 17, 17, '2024-10-30 08:18:34', 'pendente'),
(19, 18, 18, 18, '2024-10-30 08:18:34', 'pendente'),
(20, 19, 19, 19, '2024-10-30 08:18:34', 'pendente'),
(21, 20, 20, 20, '2024-10-30 08:18:34', 'pendente'),
(22, 21, 21, 21, '2024-10-30 08:18:34', 'pendente'),
(23, 22, 22, 22, '2024-10-30 08:18:34', 'pendente'),
(24, 23, 23, 23, '2024-10-30 08:18:34', 'pendente'),
(25, 24, 24, 24, '2024-10-30 08:18:34', 'pendente'),
(26, 25, 25, 25, '2024-10-30 08:18:34', 'pendente'),
(27, 26, 26, 26, '2024-10-30 08:18:34', 'pendente'),
(28, 27, 27, 27, '2024-10-30 08:18:34', 'pendente'),
(29, 28, 28, 28, '2024-10-30 08:18:34', 'pendente'),
(30, 29, 29, 29, '2024-10-30 08:18:34', 'pendente');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pratos`
--

CREATE TABLE `pratos` (
  `id` int(11) NOT NULL,
  `id_cardapio` int(11) DEFAULT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` text DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pratos`
--

INSERT INTO `pratos` (`id`, `id_cardapio`, `nome`, `descricao`, `preco`) VALUES
(1, 1, 'Bobó de Camarão', 'Cremoso e saboroso', 50.99),
(2, 1, 'Bobó de Camarão', 'Cremoso e repleto de sabor.', 49.99),
(3, 1, 'Prato do Dia', 'Arroz, feijão, carne e salada.', 29.90),
(4, 1, 'Prato Vegetariano', 'Arroz integral, legumes e tofu.', 24.90),
(5, 2, 'Lasanha', 'Lasanha de carne ou vegetais.', 34.90),
(6, 2, 'Frango Grelhado', 'Peito de frango grelhado com legumes.', 29.90),
(7, 3, 'Sanduíche Natural', 'Pão integral, alface e peito de peru.', 18.90),
(8, 3, 'Porção de Batata Frita', 'Batatas fritas crocantes.', 12.90),
(9, 4, 'Mini Pizza', 'Mini pizza com molho e queijo.', 15.90),
(10, 4, 'Hambúrguer Kids', 'Mini hambúrguer com queijo.', 19.90),
(11, 5, 'Feijoada Completa', 'Feijoada com acompanhamentos.', 39.90),
(12, 5, 'Feijoada Vegana', 'Feijoada sem carne com legumes.', 34.90),
(13, 6, 'Pizza Margherita', 'Pizza de tomate e manjericão.', 39.90),
(14, 6, 'Pizza Portuguesa', 'Pizza com presunto e ovo.', 44.90),
(15, 7, 'Picanha', 'Picanha grelhada com farofa.', 59.90),
(16, 7, 'Linguiça', 'Linguiça grelhada com molho.', 34.90),
(17, 8, 'Sushi Mix', 'Mistura de sushis variados.', 49.90),
(18, 8, 'Sashimi', 'Fatias finas de peixe fresco.', 59.90),
(19, 9, 'Salada Caesar', 'Salada com frango grelhado e croutons.', 29.90),
(20, 9, 'Salada de Quinoa', 'Salada saudável com quinoa e vegetais.', 34.90),
(21, 10, 'Refrigerante Lata', 'Refrigerante em lata.', 5.90),
(22, 10, 'Suco Natural', 'Suco natural de frutas.', 7.90),
(23, 11, 'Pudim', 'Pudim de leite condensado.', 12.90),
(24, 11, 'Torta de Limão', 'Torta de limão com merengue.', 14.90),
(25, 12, 'Espaguete ao Molho Branco', 'Espaguete com molho branco cremoso.', 34.90),
(26, 12, 'Fettuccine ao Pesto', 'Fettuccine com molho pesto.', 36.90),
(27, 13, 'Ceviche Clássico', 'Ceviche com peixe e limão.', 42.90),
(28, 13, 'Ceviche de Camarão', 'Ceviche com camarões frescos.', 49.90),
(29, 14, 'Costela Assada', 'Costela assada lentamente.', 59.90),
(30, 14, 'Costela na Cerveja', 'Costela marinada na cerveja.', 64.90),
(31, 15, 'Risoto de Funghi', 'Risoto com cogumelos.', 38.90),
(32, 15, 'Risoto de Camarão', 'Risoto com camarão e ervilhas.', 45.90),
(33, 16, 'Taco de Carne', 'Taco com carne e guacamole.', 24.90),
(34, 16, 'Taco Vegano', 'Taco com legumes e tofu.', 22.90),
(35, 17, 'Burguer Clássico', 'Hambúrguer com queijo e bacon.', 32.90),
(36, 17, 'Burguer Vegano', 'Hambúrguer à base de plantas.', 29.90),
(37, 18, 'Crepe de Chocolate', 'Crepe recheado com chocolate.', 15.90),
(38, 18, 'Crepe Salgado', 'Crepe com queijo e presunto.', 17.90),
(39, 19, 'Batatas Fritas com Queijo', 'Batatas fritas com queijo derretido.', 15.90),
(40, 19, 'Batatas Rústicas', 'Batatas rústicas com ervas.', 12.90),
(41, 20, 'Ceviche de Atum', 'Ceviche de atum fresco.', 54.90),
(42, 20, 'Ceviche de Salmão', 'Ceviche de salmão fresco.', 59.90),
(43, 21, 'Café Preto', 'Café filtrado.', 4.90),
(44, 21, 'Cappuccino', 'Café com leite e espuma.', 8.90);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vagas_estacionamento`
--

CREATE TABLE `vagas_estacionamento` (
  `id` int(11) NOT NULL,
  `STATUS` enum('livre','ocupada') DEFAULT 'livre'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vagas_estacionamento`
--

INSERT INTO `vagas_estacionamento` (`id`, `STATUS`) VALUES
(1, 'livre'),
(2, 'ocupada'),
(3, 'livre'),
(4, 'ocupada'),
(5, 'livre'),
(6, 'ocupada'),
(7, 'livre'),
(8, 'ocupada'),
(9, 'livre'),
(10, 'ocupada'),
(11, 'livre'),
(12, 'ocupada'),
(13, 'livre'),
(14, 'ocupada'),
(15, 'livre'),
(16, 'ocupada'),
(17, 'livre'),
(18, 'ocupada'),
(19, 'livre'),
(20, 'ocupada'),
(21, 'livre'),
(22, 'ocupada'),
(23, 'livre'),
(24, 'ocupada'),
(25, 'livre'),
(26, 'ocupada'),
(27, 'livre'),
(28, 'ocupada'),
(29, 'livre'),
(30, 'ocupada'),
(31, 'livre');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `avalicoes`
--
ALTER TABLE `avalicoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedido_id` (`pedido_id`);

--
-- Índices de tabela `cardapio`
--
ALTER TABLE `cardapio`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `insumos`
--
ALTER TABLE `insumos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `itens_pedido`
--
ALTER TABLE `itens_pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pedido` (`id_pedido`),
  ADD KEY `id_prato` (`id_prato`);

--
-- Índices de tabela `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_mesa` (`id_mesa`),
  ADD KEY `id_funcionario` (`id_funcionario`);

--
-- Índices de tabela `pratos`
--
ALTER TABLE `pratos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cardapio` (`id_cardapio`);

--
-- Índices de tabela `vagas_estacionamento`
--
ALTER TABLE `vagas_estacionamento`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `avalicoes`
--
ALTER TABLE `avalicoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `cardapio`
--
ALTER TABLE `cardapio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de tabela `insumos`
--
ALTER TABLE `insumos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de tabela `itens_pedido`
--
ALTER TABLE `itens_pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de tabela `mesas`
--
ALTER TABLE `mesas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de tabela `pratos`
--
ALTER TABLE `pratos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT de tabela `vagas_estacionamento`
--
ALTER TABLE `vagas_estacionamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `avalicoes`
--
ALTER TABLE `avalicoes`
  ADD CONSTRAINT `avalicoes_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`);

--
-- Restrições para tabelas `itens_pedido`
--
ALTER TABLE `itens_pedido`
  ADD CONSTRAINT `itens_pedido_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`),
  ADD CONSTRAINT `itens_pedido_ibfk_2` FOREIGN KEY (`id_prato`) REFERENCES `pratos` (`id`);

--
-- Restrições para tabelas `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`id_mesa`) REFERENCES `mesas` (`id`),
  ADD CONSTRAINT `pedidos_ibfk_3` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionarios` (`id`);

--
-- Restrições para tabelas `pratos`
--
ALTER TABLE `pratos`
  ADD CONSTRAINT `pratos_ibfk_1` FOREIGN KEY (`id_cardapio`) REFERENCES `cardapio` (`id`);
COMMIT;

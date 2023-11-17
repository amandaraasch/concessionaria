-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Nov-2023 às 13:58
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mydb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alocacao`
--

CREATE TABLE `alocacao` (
  `idAlocacao` int(11) NOT NULL,
  `automoveis_idAutomoveis` int(11) NOT NULL,
  `concessionaria_idConcessionaria` int(11) NOT NULL,
  `area` int(11) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `Usuario_idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `alocacao`
--

INSERT INTO `alocacao` (`idAlocacao`, `automoveis_idAutomoveis`, `concessionaria_idConcessionaria`, `area`, `quantidade`, `Usuario_idUsuario`) VALUES
(1, 1, 1, 1, 8, 1),
(2, 2, 1, 1, 10, 1),
(3, 1, 2, 2, 4, 1),
(4, 2, 2, 2, 6, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `automoveis`
--

CREATE TABLE `automoveis` (
  `idAutomoveis` int(11) NOT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `automoveis`
--

INSERT INTO `automoveis` (`idAutomoveis`, `modelo`, `preco`) VALUES
(1, 'Fiat Strada', 43115.00),
(2, 'Fiat Argo', 47660.00),
(3, 'Fiat Mobi', 32102.00),
(4, 'Jeep Compass', 34950.00),
(5, 'Hyundai HB20', 49302.00),
(6, 'Jeep Renegade', 36661.00),
(7, 'Volkswagen T-Cross', 38182.00),
(8, 'Fiat Toro', 57733.00),
(9, 'Hyundai Creta', 55998.00),
(10, 'Chevrolet S10', 51035.00),
(11, 'Toyota Corolla Cross', 34544.00),
(12, 'Toyota Hilux', 53937.00),
(13, 'Toyota Corolla', 55022.00),
(14, 'Volkswagen Gol', 48253.00),
(15, 'Honda HR-V', 53438.00),
(16, 'Renault Kwid', 31810.00),
(17, 'Volkswagen Nivus', 35104.00),
(18, 'Hyundai HB20S', 31855.00),
(19, 'Ford Ranger', 48927.00),
(20, 'Fiat Uno', 38111.00),
(21, 'Fiat Cronos', 36515.00),
(22, 'Citro?n C4 Cactus', 53654.00),
(23, 'Toyota Yaris Hatchback', 55869.00),
(24, 'Volkswagen Voyage', 30954.00),
(25, 'Honda Civic', 30871.00),
(26, 'Volkswagen Saveiro', 32306.00),
(27, 'Caoa Chery Tiggo 5x', 30069.00),
(28, 'Volkswagen Virtus', 40689.00),
(29, 'Fiat Grand Siena', 33469.00),
(30, 'Caoa Chery Tiggo 8', 48481.00),
(31, 'Chevrolet Tracker', 30648.00),
(32, 'Peugeot 208', 46934.00),
(33, 'Toyota SW4', 54252.00),
(34, 'Nissan Frontier', 32596.00),
(35, 'Honda WR-V', 35139.00),
(36, 'Volkswagen Taos', 47546.00),
(37, 'Mitsubishi L200', 57049.00),
(38, 'Renault Oroch', 48756.00),
(39, 'Toyota Yaris Sedan', 43077.00),
(40, 'Renault Duster', 52641.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `nomeCliente` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nomeCliente`) VALUES
(1, 'Joao'),
(2, 'Pedro'),
(3, 'Andre');

-- --------------------------------------------------------

--
-- Estrutura da tabela `concessionaria`
--

CREATE TABLE `concessionaria` (
  `idConcessionaria` int(11) NOT NULL,
  `nomeConcessionaria` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `concessionaria`
--

INSERT INTO `concessionaria` (`idConcessionaria`, `nomeConcessionaria`) VALUES
(1, 'La Fointaine'),
(2, 'Flabicar'),
(3, 'Metronorte');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nomeUsuario` varchar(45) DEFAULT NULL,
  `senhaUsuario` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nomeUsuario`, `senhaUsuario`) VALUES
(1, 'Amanda', '1807');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alocacao`
--
ALTER TABLE `alocacao`
  ADD PRIMARY KEY (`idAlocacao`),
  ADD KEY `fk_alocacao_automoveis_idx` (`automoveis_idAutomoveis`),
  ADD KEY `fk_alocacao_concessionaria1_idx` (`concessionaria_idConcessionaria`),
  ADD KEY `fk_alocacao_Usuario1_idx` (`Usuario_idUsuario`);

--
-- Índices para tabela `automoveis`
--
ALTER TABLE `automoveis`
  ADD PRIMARY KEY (`idAutomoveis`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices para tabela `concessionaria`
--
ALTER TABLE `concessionaria`
  ADD PRIMARY KEY (`idConcessionaria`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `alocacao`
--
ALTER TABLE `alocacao`
  ADD CONSTRAINT `fk_alocacao_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alocacao_automoveis` FOREIGN KEY (`automoveis_idAutomoveis`) REFERENCES `automoveis` (`idAutomoveis`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alocacao_concessionaria1` FOREIGN KEY (`concessionaria_idConcessionaria`) REFERENCES `concessionaria` (`idConcessionaria`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

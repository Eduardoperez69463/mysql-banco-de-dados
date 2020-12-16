-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Dez-2020 às 16:01
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `esco`
--
CREATE DATABASE IF NOT EXISTS `esco` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `esco`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargo`
--

CREATE TABLE `cargo` (
  `idcargo` int(11) NOT NULL,
  `cargo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cargo`
--

INSERT INTO `cargo` (`idcargo`, `cargo`) VALUES
(1, 'professor'),
(2, 'cordinfo'),
(3, 'cordpedagogico'),
(4, 'cordensinomedio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargofunc`
--

CREATE TABLE `cargofunc` (
  `codfuncionario` int(11) NOT NULL,
  `codcargo` int(11) NOT NULL,
  `dataentrada` date NOT NULL,
  `datasaida` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cargofunc`
--

INSERT INTO `cargofunc` (`codfuncionario`, `codcargo`, `dataentrada`, `datasaida`) VALUES
(1, 1, '2011-12-02', '0000-00-00'),
(1, 4, '2014-12-02', '2015-12-02'),
(1, 3, '2016-12-02', '0000-00-00'),
(2, 1, '2011-12-02', '0000-00-00'),
(2, 2, '2010-12-07', '2012-12-02'),
(2, 2, '2014-12-02', '2016-12-02'),
(3, 3, '2015-12-02', '0000-00-00'),
(3, 1, '2014-12-02', '2016-12-02'),
(4, 1, '2008-12-02', '0000-00-00'),
(4, 2, '2020-03-01', '2020-12-18'),
(5, 1, '2015-12-02', '0000-00-00'),
(5, 4, '2017-12-02', '2018-12-18');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `codfuncionario` int(11) NOT NULL,
  `nomefuncionario` varchar(255) NOT NULL,
  `dataentrada` date NOT NULL,
  `datasaida` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`codfuncionario`, `nomefuncionario`, `dataentrada`, `datasaida`) VALUES
(1, 'amanda', '2011-12-02', '0000-00-00'),
(2, 'anderson', '2009-12-07', '0000-00-00'),
(3, 'keli', '2006-12-02', '0000-00-00'),
(4, 'carlos', '2007-12-07', '0000-00-00'),
(5, 'bruno', '2013-12-09', '0000-00-00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`idcargo`);

--
-- Índices para tabela `cargofunc`
--
ALTER TABLE `cargofunc`
  ADD KEY `codfuncionario` (`codfuncionario`),
  ADD KEY `codcargo` (`codcargo`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`codfuncionario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cargo`
--
ALTER TABLE `cargo`
  MODIFY `idcargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `codfuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cargofunc`
--
ALTER TABLE `cargofunc`
  ADD CONSTRAINT `cargofunc_ibfk_1` FOREIGN KEY (`codcargo`) REFERENCES `cargo` (`idcargo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cargofunc_ibfk_2` FOREIGN KEY (`codfuncionario`) REFERENCES `funcionario` (`codfuncionario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

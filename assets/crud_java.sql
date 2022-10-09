-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 09-Out-2022 às 19:31
-- Versão do servidor: 5.7.33
-- versão do PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `crud_java`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `department`
--

CREATE TABLE `department` (
  `Id` int(11) NOT NULL,
  `Name` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `department`
--

INSERT INTO `department` (`Id`, `Name`) VALUES
(1, 'Computers'),
(2, 'Electronics'),
(3, 'Fashion'),
(4, 'Books'),
(8, 'Tecnologia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `seller`
--

CREATE TABLE `seller` (
  `Id` int(11) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `BirthDate` datetime NOT NULL,
  `BaseSalary` double NOT NULL,
  `DepartmentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `seller`
--

INSERT INTO `seller` (`Id`, `Name`, `Email`, `BirthDate`, `BaseSalary`, `DepartmentId`) VALUES
(1, 'Bob Brown', 'bob@gmail.com', '1998-04-21 00:00:00', 1000, 1),
(2, 'Maria Green', 'maria@gmail.com', '1979-12-31 00:00:00', 3500, 2),
(3, 'Alex Grey', 'alex@gmail.com', '1988-01-15 00:00:00', 2200, 1),
(5, 'Donald Blue', 'donald@gmail.com', '2000-01-09 00:00:00', 4000, 3),
(6, 'Alex Pink', 'bob@gmail.com', '1997-03-04 00:00:00', 3000, 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Id`);

--
-- Índices para tabela `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `DepartmentId` (`DepartmentId`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `department`
--
ALTER TABLE `department`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `seller`
--
ALTER TABLE `seller`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `seller`
--
ALTER TABLE `seller`
  ADD CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`DepartmentId`) REFERENCES `department` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

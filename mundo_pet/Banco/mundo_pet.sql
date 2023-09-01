-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29/06/2023 às 04:26
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mundo_pet`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `administrator`
--

CREATE TABLE `administrator` (
  `id_admin` int(11) NOT NULL,
  `adm_email` varchar(255) NOT NULL,
  `adm_senha` varchar(255) NOT NULL,
  `adm_nome` char(255) NOT NULL,
  `adm_sobrenome` char(255) NOT NULL,
  `adm_funcao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `cli_email` varchar(255) NOT NULL,
  `cli_senha` varchar(255) NOT NULL,
  `cli_nome` char(255) DEFAULT NULL,
  `adm_email` varchar(255) NOT NULL,
  `adm_senha` varchar(255) NOT NULL,
  `adm_nome` char(255) DEFAULT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `pro_barcode` varchar(255) NOT NULL,
  `ord_quantidade` int(11) NOT NULL,
  `ord_pagamento` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `products`
--

CREATE TABLE `products` (
  `adm_email` varchar(255) NOT NULL,
  `pro_barcode` varchar(255) NOT NULL,
  `pro_categoria` varchar(255) NOT NULL,
  `pro_preco` decimal(10,2) NOT NULL,
  `pro_tamanho` varchar(50) NOT NULL,
  `pro_imagem` varchar(255) NOT NULL,
  `id_administrator` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_client`
--

CREATE TABLE `tb_client` (
  `id_cliente` int(11) NOT NULL,
  `cli_nome` char(255) NOT NULL,
  `cli_sobrenome` char(255) NOT NULL,
  `cli_cpf` int(11) NOT NULL,
  `cli_email` varchar(255) NOT NULL,
  `cli_telefone1` int(20) NOT NULL,
  `cli_telefone2` int(20) DEFAULT NULL,
  `cli_cep` int(10) NOT NULL,
  `cli_cidade` varchar(255) NOT NULL,
  `cli_rua` varchar(255) NOT NULL,
  `cli_numero` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id_admin`);

--
-- Índices de tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Índices de tabela `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`);

--
-- Índices de tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_barcode`),
  ADD KEY `id_administrator` (`id_administrator`);

--
-- Índices de tabela `tb_client`
--
ALTER TABLE `tb_client`
  ADD PRIMARY KEY (`id_cliente`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_client`
--
ALTER TABLE `tb_client`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `tb_client` (`id_cliente`);

--
-- Restrições para tabelas `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_administrator`) REFERENCES `administrator` (`id_admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

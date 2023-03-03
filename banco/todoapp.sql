-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Fev-2023 às 15:11
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `todoapp`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `createdAt`, `updatedAt`) VALUES
(7, 'Meu primeiro projeto', 'Esse foi o meu primeiro projeto que criei no Todo App', '2023-01-20 00:00:00', '2023-01-20 00:00:00'),
(8, 'teste projeto', 'teste de carregamento do projeto', '2023-02-01 00:00:00', '2023-02-01 00:00:00'),
(9, 'Terceiro Projeto', 'qualquer coisa', '2023-02-01 00:00:00', '2023-02-01 00:00:00'),
(10, 'Projeto ETE', 'trabalhos de faculdade', '2023-02-01 00:00:00', '2023-02-01 00:00:00'),
(11, 'Obrigado Deus', 'Deus o senhor é tudo na minha Vida, obrigado por tudo', '2023-02-01 00:00:00', '2023-02-01 00:00:00'),
(12, 'jobs', 'qualquer coisa', '2023-02-18 00:00:00', '2023-02-18 00:00:00'),
(13, 'Projeto piloto', 'cadastrando', '2023-02-18 00:00:00', '2023-02-18 00:00:00'),
(14, 'projeto quarto', 'descrição do projeto', '2023-02-23 00:00:00', '2023-02-23 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `idProject` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `completed` tinyint(1) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `deadline` date NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tasks`
--

INSERT INTO `tasks` (`id`, `idProject`, `name`, `description`, `completed`, `notes`, `deadline`, `createdAt`, `updatedAT`) VALUES
(1, 7, 'Minha primeira tarefa', 'Minha tarefa realizada no Todo App', 0, 'Notas sobre minha tarefa', '2023-02-02', '2023-02-01 00:00:00', '2023-02-01 00:00:00'),
(4, 7, 'testando2', 'fazendo teste', 0, 'Notas mil', '2023-02-16', '2023-02-14 00:00:00', '2023-02-14 00:00:00'),
(5, 7, 'Job', 'Tarefa job', 0, 'notas sobre a tarefa', '2023-02-19', '2023-02-18 00:00:00', '2023-02-18 00:00:00'),
(6, 7, 'tarefa', 'dsodpjdskds', 0, 'dskmdjklsdjksds', '2023-02-20', '2023-02-18 00:00:00', '2023-02-18 00:00:00'),
(7, 7, 'tarefa do meu primeiro projeto', 'dwjkdsjdsjids', 0, 'ashiashiosahhsa', '2023-02-19', '2023-02-18 00:00:00', '2023-02-18 00:00:00'),
(8, 7, 'Tarefa atualizar lista tarefa', 'dkdsijdsisdidjidsds', 0, 'ddjdsjosjdds', '2023-03-02', '2023-02-18 00:00:00', '2023-02-18 00:00:00'),
(9, 13, 'Tarefa do projeto piloto', '', 0, '', '2023-03-10', '2023-02-18 00:00:00', '2023-02-18 00:00:00'),
(10, 13, 'atualizando lista tarefa', 'dddsds', 0, 'adkdsjidsjkd', '2023-02-25', '2023-02-23 00:00:00', '2023-02-23 00:00:00'),
(11, 12, 'Deletar', 'dsdsdsds', 0, 'dsdsd', '2023-03-25', '2023-02-23 00:00:00', '2023-02-23 00:00:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_projects` (`idProject`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `fk_projects` FOREIGN KEY (`idProject`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

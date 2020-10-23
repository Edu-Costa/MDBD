-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Out-2020 às 23:51
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jornal`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020),
(2021);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codCategoria` int(11) NOT NULL,
  `categoria` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codCategoria`, `categoria`) VALUES
(1, 'Política'),
(2, 'Jogos'),
(3, 'Celebridades'),
(4, 'Esportes'),
(5, 'Cidade'),
(6, 'Tecnologia'),
(7, 'Cultural');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `codNoticia` int(11) NOT NULL,
  `titulo` varchar(250) DEFAULT NULL,
  `noticia` text DEFAULT NULL,
  `idRedator` int(11) DEFAULT NULL,
  `codCategoria` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codNoticia`, `titulo`, `noticia`, `idRedator`, `codCategoria`, `dia`, `mes`, `ano`) VALUES
(1, 'Nintendo anuncia novo jogo do irmão verde do Mario', 'A Nintendo anuncia um jogo spin-off sobre o universo do mario, o jogo se passará em 1929 e sera um FPS, o protagonista será o irmão verde de mario, Luis', 1, 6, 12, 12, 2018),
(2, 'Luminosity Gaming campeã do major!!', 'A lineup composta por: FalleN, Fer, Coldzera, taco, FNX e zews como IGL, ganhou recentemente o Major Colombus, sendo o primeiro time da américa latina  a ganhar um major no Counter Strike Global Offensive.\r\nA line já mostrava certo potencial em campeonatos anteriores, cujo ganhou 3 campeonatos seguidos, se destacando principalmente pelas viradas históricas contra os grandes times!', 5, 6, 8, 5, 2015),
(3, 'Brasileiro detecta falha grave no instagram e é recompensado por isso.', 'Um garoto de 14 anos descobre falha no instagram que possibilita modificação de scripts do mesmo.\r\nO erro possibilitava a modificação e obtenção de dados do instagram por meio de filtros. O menino responsável pelo encontro do erro foi recompensado com 100.000 reais', 1, 7, 18, 11, 2020),
(4, 'Saúde mental na pandemia: que tal uma ‘faxina’ nas redes?', 'O número de bolinhas cor-de-rosa no topo da tela do Instagram parece aumentar exponencialmente a cada dia, corroborando os recordes de audiência registrados nas principais redes sociais desde o da pandemia do novo coronavírus. Os “pushes” (aquelas notificações na “janelinha” retrátil da tela do celular) de noves lives são quase tão abundantes quantos as notícias. \r\n\r\n\r\n', 1, 7, 9, 5, 2020),
(5, 'O autogolpe de Gabriela Pugliesi: falta de noção e fuga de patrocinadores.', 'Ao assistir seus mais de dez anunciantes quebrarem contratos, Gabriela Pugliesi percebeu o tamanho do buraco cavado por ela mesma. A influenciadora expôs ao Brasil que seu discurso de vida saudável tem a consistência de uma mousse de whey protein estragado. No sábado, 25, ela organizou uma festa em sua casa para Mari Gonzalez, amiga que acabara de ser eliminada do BBB.', 2, 4, 27, 3, 2020),
(6, 'Governo acelera negociações com devedores, recupera R$ 35 bilhões e planeja \'passaporte tributário\'', 'No momento em que cresce no Congresso a pressão por um novo Refis (Programa de Recuperação Fiscal) para salvar empresas afetadas pela pandemia, o governo acelera a negociação com devedores inscritos na dívida ativa da União.\r\n\r\nDe dezembro até 30 de setembro, por meio da chamada Lei da Transação, a Procuradoria-Geral da Fazenda (PGFN) conseguiu recuperar R$ 35 bilhões, valor antecipado ao blog.\r\n\r\nO instrumento tem tido tanto sucesso que o ministro da Economia, Paulo Guedes, decidiu propor como quinta etapa da reforma tributária a ser enviada ao Congresso uma proposta de \"passaporte tributário\";\r\n\r\nPela proposta, empresas terão facilidade de negociar dívidas ao aceita', 3, 1, 22, 10, 2020),
(7, 'Embaixadora e senador levarão a Putin carta em que Bolsonaro pede soltura de brasileiro Robson', 'O presidente Jair Bolsonaro deve enviar na próxima semana uma carta ao presidente da Rússia, Vladimir Putin, para pedir a soltura do brasileiro Robson Oliveira – preso em 2019 ao entrar no país europeu com duas caixas de remédios para a família do jogador de futebol Fernando.\r\n\r\nO documento deve ser levado à Rússia pelo senador Nelsinho Trad (PSD-MS), presidente da Comissão de Relações Exteriores do Senado, e pela secretária de Negociações Bilaterais na Ásia, Pacífico e Rússia do Ministério das Relações Exteriores, embaixadora Márcia Donner Abreu.', 3, 1, 21, 10, 2020),
(8, 'Quem já avançou na Libertadores e quem seu time pode enfentar nas oitavas', 'A Copa Libertadores já conta com 14 classificados para as oitavas de final da competição e as duas últimas vagas serão definidas nesta noite. Internacional, América de Cali, Caracas e Libertad são as equipes que ainda brigam por um lugar na próxima fase do torneio continental. O sorteio para as oitavas de final acontece já na sexta-feira (23), às 12h (de Brasília), e terá transmissão do Fox Sports, disponível no UOL Esporte Clube. Os 16 times serão divididos em dois potes: um com os oito primeiros colocados de cada grupo e outro com os segundos', 1, 5, 22, 10, 2020),
(9, 'Neymar atropela meci careca e causa alvoroço em Madri', 'Neymar foi preso sob o efeito de entorpecentes, meci careca foi uma vítima do acidente, está internado no hospital alberto ainstain', 4, 5, 22, 10, 2020),
(10, 'Desautorizado, desgaste de Pazuello causa mal-estar entre militares, que pressionam pela reserva', 'A ação do presidente Jair Bolsonaro desautorizando publicamente o ministro da Saúde, Eduardo Pazuello, gerou desgaste para o general da ativa entre militares.\r\n\r\nDesde o início da manhã da quarta-feira (21), houve a tentativa de atribuir a um erro de Pazuello o acordo da vacina com o governo de São Paulo. Mas não houve erro: o Planalto sabia do acordo com São Paulo, só não gostou da reação negativa do anúncio nas redes sociais — com críticas de apoiadores do presidente —, além do que chamaram de “palanque” para o governador paulista, João Doria.\r\n\r\nMesmo assim, Bolsonaro desautorizou publicamente Pazuello, o que causou mal-estar entre integrantes da cúpula militar.', 4, 1, 22, 10, 2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `idRedator` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `Sobrenome` varchar(245) DEFAULT NULL,
  `email` varchar(245) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `cidade` varchar(245) DEFAULT NULL,
  `telefone` varchar(245) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`idRedator`, `nome`, `Sobrenome`, `email`, `ddd`, `cidade`, `telefone`, `codTurma`, `ano`, `mes`, `dia`) VALUES
(1, 'Eduardo', 'Costa', 'EduC@gmail.com', 11, 'Mauá', '908765678', 1, 2004, 11, 17),
(2, 'Sofia', 'Aquino', 'Sofis_aqq@gmail.com', 11, 'Ribeirão Pires', '905043214', 2, 2004, 11, 12),
(3, 'Arion', 'Vidal', 'Arial@gmail.com', 11, 'Ribeirão Pires', '904050486', 5, 2002, 6, 5),
(4, 'Cleiton', 'Rasta', 'CleiRasta@hotmail.com', 11, 'Ribeirão Pires', '956575210', 15, 2001, 5, 13),
(5, 'José', 'Josevaldo', 'JoJo@gmail.com', 11, 'Santo André', '905430453', 14, 2004, 6, 22);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(245) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`) VALUES
(1, '1C'),
(2, '2C'),
(3, '3C'),
(4, '1B'),
(5, '2B'),
(6, '3B'),
(7, '1A'),
(8, '2A'),
(9, '3A'),
(10, '1F'),
(11, '2F'),
(12, '3F'),
(13, '1I'),
(14, '2I'),
(15, '3I');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codCategoria`);

--
-- Índices para tabela `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Índices para tabela `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codNoticia`),
  ADD KEY `idRedator` (`idRedator`),
  ADD KEY `codCategoria` (`codCategoria`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`idRedator`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `ano` (`ano`),
  ADD KEY `mes` (`mes`),
  ADD KEY `dia` (`dia`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `idRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`idRedator`) REFERENCES `redator` (`idRedator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`codCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Dez-2020 às 22:25
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
-- Banco de dados: `jornaldaescola`
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
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codcategoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codcategoria`, `categoria`) VALUES
(1, 'Esporte'),
(2, 'Entreterimento'),
(3, 'Politica'),
(4, 'Saude'),
(5, 'Infra Estrutura'),
(6, 'Educação');

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
  `codnoticia` int(11) NOT NULL,
  `noticia` text DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `codredator` int(11) DEFAULT NULL,
  `codcategoria` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codnoticia`, `noticia`, `titulo`, `codredator`, `codcategoria`, `mes`, `ano`, `dia`) VALUES
(1, 'O relator da medida provisória que prevê a compra de vacina contra a Covid-19 pelo programa internacional Covax Faciliy (leia mais abaixo), deputado Geninho Zuliani (DEM-SP), informou que o texto a ser votado pelo Congresso terá a previsão de um “termo de consentimento” a ser assinado por quem tomar a futura vacina.\r\n\r\nZuliani se reuniu com o presidente Jair Bolsonaro nesta terça-feira (15) e afirmou que o termo a ser assinado pelos cidadãos vai tirar da União a responsabilidade sobre eventuais efeitos colaterais da vacina.\r\n\r\nEpidemiologistas criticaram a exigência do termo e afirmaram que \"parece que o presidente não quer que a vacina aconteça\" \r\n\r\n\r\n\r\nCovax Facility é um programa global coordenado pela Organização Mundial da Saúde (OMS) para impulsionar o desenvolvimento e garantir a compra de vacinas contra a Covid-19. A coalizão envolve mais de 150 países, e a adesão do Brasil será prevista na MP.', 'Relator propõe que cada pessoa vacinada contra Covid assine \'termo de consentimento\'; especialistas criticam proposta', 1, 1, 4, 2020, 21),
(3, 'O presidente do Banco Central, Roberto Campos Neto, afirmou nesta terça-feira (15) que é mais barato o governo fechar acordos para vacinar a população contra a Covid-19 do que prolongar o auxílio emergencial.\r\n\r\nO governo tem indicado que não prolongará o auxílio emergencial em 2021. Segundo o ministro da Economia, Paulo Guedes, há algumas parcelas a serem pagas à população no começo do ano que vem, mas relativas ao benefício aprovado neste ano.\r\n\r\nA área econômica dado sinais de que esses serão os últimos pagamentos do benefício. Porém, há iniciativas no Congresso Nacional para estender a ajuda por mais alguns meses.\r\n\r\n\"O Brasil está fechando novos acordos para conseguir a vacina. Agora é uma corrida para ver quem tem a vacina mais cedo, como pode fechar a logística de distribuição. Isso muda todos os dias, mas eu acho que investir na vacina agora é mais barato do que prolongar as transferências diretas, e planos como esses. Estamos concentrando nisso e é o que o mercado está focando\", declarou Campos Neto, em fórum com investidores internacionais.\r\n', 'Investir em vacinas é mais barato que prolongar auxílios à população, diz presidente do BC', 8, 4, 10, 2020, 28),
(5, 'O Brasil caiu cinco posições no ranking de Índice de Desenvolvimento Humano em 2019, quando comparado ao ano anterior, ainda que seu desempenho tenha tido uma leve melhora.\r\n\r\nBrasil cai cinco posições no ranking mundial de desenvolvimento humano\r\nBrasil cai cinco posições no ranking mundial de desenvolvimento humano\r\n\r\nO resultado consta no Relatório de Desenvolvimento Humano, do Programa de Desenvolvimento das Nações Unidas (PNUD), divulgado nesta terça-feira (15).\r\n\r\nConsiderando os 189 países analisados, os brasileiros aparecem agora na posição 84, em vez da 79 - que ocupavam em 2018 após perder uma posição no ranking. Isso apesar de o índice ter subido de 0,762 para 0,765.\r\n\r\nGráfico mostra a evolução do IDH brasileiro desde 1990 — Foto: Fernanda Garrafiel/G1\r\nGráfico mostra a evolução do IDH brasileiro desde 1990 — Foto: Fernanda Garrafiel/G1\r\n\r\n\r\nO resultado, porém, ainda mantém o Brasil no grupo de países com alto desenvolvimento humano.\r\n\r\nIDH 2019: Brasil tem 2ª maior concentração de renda do mundo\r\nMas não há motivos para grande otimismo quando é feita uma comparação com países da América do Sul. A média brasileira é menor do que a de Chile, Argentina, Uruguai, Peru e Colômbia.\r\n\r\nTabela mostra a posição dos países da América do Sul no ranking do IDH — Foto: Amanda Paes/G1\r\nTabela mostra a posição dos países da América do Sul no ranking do IDH — Foto: Amanda Paes/G1\r\n\r\nJá em comparação com outros Brics, grupo de países emergentes do qual faz parte, o Brasil perde para a Rússia, mas aparece à frente de China, África do Sul e Índia.\r\n\r\nDados relativos ao ambiente\r\nO relatório do IDH traz também informações sobre o ambiente. O Brasil recebe destaque nesse trecho do relatório. De acordo com a PNUD, ecossistemas como a Amazônia podem virar savanas por causa da perda de mata, provocada por incêndios e mudanças do uso da terra.\r\n\r\nBrasil e Bolívia tiveram grandes perdas de florestas primárias em 2018 e 2019.\r\n\r\nEfeito da pandemia ainda não aparece\r\nOs dados do relatório divulgado nesta terça-feira são relativos ao ano de 2019 e, portanto, não há o impacto causado pela pandemia nos IDHs dos países.\r\n\r\nA ONU estima que em 2020, por causa da pandemia, todo o mundo terá uma diminuição do IDH. É algo inédito desde a criação do índice, em 1990.\r\n\r\n\r\nOs países que lideram o ranking\r\nOs três países que lideram o ranking de Desenvolvimento Humano são europeus: em primeiro lugar a Noruega, com Irlanda e Suíça empatadas em segundo. Veja abaixo a lista dos dez países com os melhores índices em 2019\r\n\r\nNoruega (1) – 0,954\r\nSuíça (2) – 0,946\r\nIrlanda (3) – 0,942\r\nAlemanha (4) – 0,939\r\nHong Kong (território semiautônomo da China) (5) – 0,939\r\nAustrália (6) – 0,938\r\nIslândia (7) – 0,938\r\nSuécia (8) – 0,937\r\nSingapura (9) – 0,935\r\nHolanda (10) – 0,933\r\nJá os três índices mais baixos foram obtidos por países africanos: Chade, República Centro-Africana e Níger.\r\n\r\nEntenda o IDH\r\nAté 1990, quando o IDH foi criado, o Produto Interno Bruto (PIB) era o principal indicador usado para comparar países. O problema é que o PIB é um número da dimensão da economia de um país, mas não traz nenhuma informação sobre outros aspectos da vida naquela nação.\r\n\r\nNo cálculo são computados três indicadores diferentes dos países:\r\n\r\nA expectativa de vida;\r\nA renda média per capita (divide-se o Produto Interno Bruto pela população);\r\nQuantos anos as pessoas no país estudaram (esse componente é separado em dois: a média de anos que os adultos com mais de 25 anos estudaram e uma previsão de quantos anos as crianças antes da vida escolar deverão estudar)\r\níndice do IDH varia entre 0 e 1. Neste ano, o Níger, o último país da lista, pontuou 0,377, e a Noruega, a primeira, ficou com 0,954.\r\n\r\n\r\n', 'Brasil perde cinco posições no ranking mundial de IDH, apesar de uma leve melhora do índice', 8, 5, 10, 2020, 14),
(7, 'A Agência de Alimentos e Medicamento (FDA) dos Estados Unidos emitiu nesta terça-feira (15) uma avaliação positiva sobre a vacina do laboratório americano Moderna contra a Covid-19, antes de uma reunião de especialistas para examinar sua aprovação em caráter de emergência.\r\n\r\n\r\nA FDA se mostrou otimista sobre a vacina, afirmando que \"não mostra problemas de segurança específicos que impeçam a emissão\" de uma autorização para o uso de emergência. A agência reguladora confirmou que o tratamento tem eficácia de 94,1%.\r\n\r\nModerna afirma que sua vacina contra Covid-19 é 94,5% eficaz, segundo análise preliminar da fase 3\r\nModerna espera disponibilizar até 150 milhões de doses de sua vacina contra Covid-19 no primeiro trimestre de 2021\r\nEficácia da vacina e mais 7 tópicos: entenda os conceitos em jogo nos testes e na imunização contra Covid\r\nA Moderna anunciou na quinta-feira (3) que planeja disponibilizar entre 100 e 125 milhões de doses do seu imunizante no primeiro trimestre de 2021. Segundo a empresa, a maioria das doses irá para os Estados Unidos – 85 a 100 milhões – e entre 15 e 25 milhões para o resto do mundo.\r\n\r\nAs doses do primeiro trimestre estão entre 500 milhões e até 1 bilhão de doses que a Moderna espera fabricar globalmente em 2021.', 'Vacina da Moderna não mostra \'problemas de segurança\', afirma FDA', 3, 4, 12, 2020, 9),
(9, 'Cidade do México, 15 dez (EFE).- O presidente do México, Andrés Manuel López Obrador, finalmente reconheceu, nesta terça-feira, a vitória de Joe Biden nas eleições dos Estados Unidos do mês passado, depois que o Colégio Eleitoral americano ratificou o democrata como presidente eleito. Durante entrevista coletiva no Palácio Nacional, o presidente mexicano revelou que ontem à noite, \"uma vez terminada a sessão do conselho eleitoral dos Estados Unidos e tomada uma resolução a favor de Biden\", ele enviou uma carta ao democrata como \"presidente eleito dos Estados Unidos da América\". López Obrador, que manteve uma boa relação com Donald Trump, foi até agora um dos poucos líderes que ain... ', 'Presidente mexicano reconhece vitória de Biden nos EUA... ', 9, 3, 12, 2020, 14),
(10, 'A petição que motivou a manifestação da ministra do STF foi apresentada pela Rede Sustentabilidade. “É forçoso que essa Eg. Corte atue, no sentido de frear potenciais comportamentos inconstitucionais por parte de instituições públicas. A sociedade não pode ser refém de voluntarismos de governantes ou de agentes públicos”, defendeu a sigla.\r\n\r\nCármen Lúcia, ao cobrar a manifestação da Abin e do GSI, afirmou que “o quadro descrito pelo autor da petição é grave” e relembrou que o STF já confirmou “a ilegitimidade de uso da máquina ou de órgãos estatais para atender interesses particulares de qualquer pessoa”.\r\n\r\nNa sexta-feira 11, a revista Época revelou que a ajuda da Abin a Flávio se deu no caso da “rachadinha”. De acordo com o veículo, a agência produziu ao menos dois relatórios para o senador no episódio que envolve seu ex-assessor Fabrício Queiroz.\r\n\r\nA ideia da Abin seria fornecer aos advogados do parlamentar uma orientação para obter documentos que poderiam embasar um pedido de anulação do caso Queiroz.\r\n\r\nEm outubro, a Rede Sustentabilidade já havia pedido ao STF o afastamento de Alexandre Ramagem e Augusto Heleno após a veiculação da notícia de que houve uma reunião entre as duas autoridades e advogados de Flávio Bolsonaro. Na última sexta-feira 11, o partido reforçou a solicitação à Corte.\r\n\r\nNesta segunda, o subprocurador do Ministério Público junto ao Tribunal de Contas da União (TCU), Lucas Rocha Furtado, cobrou que o TCU apure o episódio. Segundo ele, a participação da Abin no caso configuraria “desvio de finalidade, com flagrante e grave violação aos princípios administrativos da legalidade, da impessoalidade e da moralidade”.', 'Cármen Lúcia dá 24 horas para Abin e GSI explicarem possível ajuda a Flávio', 1, 3, 12, 2019, 18),
(11, 'Depois de bater todas as metas em apenas duas horas de lançamento da campanha, o Nerdcast RPG: Coleção Cthulhu do site Jovem Nerd chegou a R$ 5 milhões de arrecadação.\r\n\r\nNovas metas foram anunciadas. Duas das novas metas estabelecidas já foram batidas previamente: todos os apoiadores de nível 4 para cima ganharão um conjunto de dados do Rex, para garantir boas rolagens em suas aventuras de RPG.\r\n\r\nA outra é uma versão do romance em audiobook para todos os apoiadores do nível 2 (edição digital dos livros)', 'Crowdfunding do Jovem Nerd ultrapassa R$ 5 milhões', NULL, 2, 11, 2020, 11),
(13, 'Recentemente, o Google anunciou que a farra acabou para os usuários do Fotos: a companhia não oferecerá mais espaço ilimitado para você armazenar imagens, restringindo a capacidade de 15 GB para cada conta Google (detalhe: esse espaço é compartilhado nos diferentes produtos da companhia, ou seja, Gmail, Drive, Docs e Fotos). Agora, a companhia passou a enviar e-mails notificando seus usuários de forma mais clara a respeito dessas novas políticas, de forma que você possa se planejar com antecedência. E com uma novidade um pouco indigesta: se você extrapolar o limite durante dois anos, a companhia também pode se livrar do conteúdo excedente.\r\n\r\nComo saber quantas fotos tem no seu Google Fotos\r\nComo usar o Google One para fazer backup no celular\r\nVocê tem seis meses para aproveitar o armazenamento ilimitado do Google Fotos\r\nAs políticas entram em vigor a partir do dia 1º de junho de 2021. Depois dessa data, o Gigante das Buscas poderá eliminar conteúdos excedentes, especialmente se sua conta estiver inativa por mais de dois anos (24 meses). Ultrapassar o limite de armazenamento gratuito (15 GB) durante dois anos também será motivo para exclusões arbitrárias de documentos, fotos e arquivos; logo, é preciso tomar cuidado para não acabar perdendo material importante por conta dessa regra. Só começa a vigorar mesmo a partir de junho de 2023, dois anos após a implementação das novas diretrizes — não vale de forma retroativa, mas já é bom todo mundo ficar de olho no que está \"sobrando\" acima do seu espaço gratuito.\r\n\r\n“Após 1 de junho de 2021, se a sua conta estiver inativa ou acima do limite de armazenamento, iremos enviar-lhe lembretes e notificações por e-mail com antecedência e antes da eliminação de qualquer conteúdo”, explica a companhia. “Mesmo que a sua conta esteja inativa ou acima do limite de armazenamento em um ou mais destes serviços e o conteúdo seja eliminado, ainda conseguirá iniciar sessão”, complementa. As regras não se aplicam a consumidores corporativos do G Suite/Workspace.\r\n\r\nNão é preciso se desesperar: você terá, afinal, cerca de cinco meses para se preparar. Além disso, o próprio Google diz que vai avisar várias vezes antes de jogar o que está sobrecarregando seu limite fora. \"Após 1 de junho de 2021, se a sua conta estiver inativa ou acima do limite de armazenamento, iremos enviar-lhe lembretes e notificações por e-mail com antecedência e antes da eliminação de qualquer conteúdo\", reforça a companhia.\r\n\r\nHá duas alternativas: fazer backup de todos esses conteúdos para um serviço externo (ou um HD portátil, caso prefira meios físicos) ou contratar um plano no Google One. É possível adquirir 100 GB por apenas R$ 6,90 por mês, 200 GB por R$ 9,99 mensais ou 2 TB por R$ 34,99 — caso você realmente não queira se preocupar com falta de espaço na nuvem. O pagamento pode ser feito por cartão de crédito ou Mercado Pago.', 'Google avisa que vai apagar excedente no armazenamento do Drive após 2 anos', 8, 5, 11, 2020, 14),
(14, 'Estudante do segundo ano do ensino médio, Anna Júlia de Lima Cabral tinha um compromisso decisivo às 9 da manhã de ontem: encarar uma prova online de História.\r\n\r\nEm recuperação, ela precisava tirar nota 7 para passar de ano. Para a sua apreensão, a avaliação não ocorreu, pois o sistema do Google em que a prova aconteceria estava fora do ar.\r\n\r\nA estudante de Natal (RN), porém, não estava sozinha – e percebeu junto com milhares de outros usuários o quanto depende da empresa.\r\n\r\nPUBLICIDADE\r\n\r\nNa manhã de ontem, praticamente todos os serviços do Google passaram cerca de 45 minutos fora do ar em diversos países do mundo – as reclamações vinham de Índia, África do Sul, Europa e até Estados Unidos, onde o problema ocorreu antes das 7 da manhã.\r\n\r\nNo Brasil, começou às 8h47 da manhã. Usuários passaram a reportar em suas redes sociais que Gmail, Drive, YouTube, Meet, Play Store e outros serviços da empresas estavam fora do ar – só a ferramenta de buscas passou ilesa. Às9h30, os serviços começaram a voltar.\r\n\r\nCerca de quatro horas e meia depois, o Google apresentou explicação e afastou os temores iniciais de que um mega ataque cibernético teria sido a causa.\r\n\r\n“O Google sofreu uma queda em seu sistema de autenticação em razão de um problema de gestão interna da cota de armazenamento. Os serviços que requerem login de usuários apresentaram altas taxas de erro durante esse período”, diz parte da nota da empresa.\r\n\r\nEm outras palavras, o mecanismo de usuário e senha teve um problema em como o espaço dedicado a ele dentro da infraestrutura do Google é administrado.\r\n\r\nIsso fez com que o sistema fosse desativado. A maioria dos serviços do Google exige login e senha, o que explica a pane generalizada. A empresa afirma que continua investigando o problema para que ele não se repita.\r\n\r\n', 'Google fica fora do ar por 45 minutos e expõe dependência de seus serviços', 8, 5, 12, 2020, 12),
(15, '\r\nO que você está buscando?\r\n \r\nASSINE E ASSISTA\r\nMELHOR FUTEBOL DO MUNDO\r\nMarquinhos fala sobre possível chegada de Messi ao PSG\r\nJogadores irão se enfrentar nas oitavas da Champions League\r\n\r\nPor Redação do Esporte Interativo  15 de Dezembro\r\n\r\nMAIS VISTAS\r\n1Neymar JR of Paris Saint Germain reacts dejected during the French Ligue 1 soccer match between Paris Saint-Germain and Dijon FCO at Parc des Princes on October 24, 2020 in Paris, France. (Photo by Baptiste Fernandez/Icon Sport via Getty Images)\r\nMELHOR FUTEBOL DO MUNDO\r\nInternautas repercutem entrada de Thiago Mendes em Neymar\r\n2Pai de Neymar reclama de carrinho no filho: \'Até quando a culpa será da vítima?\'\r\nPai de Neymar reclama de carrinho no filho: \'Até quando a culpa será da ...RO\r\nCoritiba demite o técnico Rodrigo Santana\r\n4Thiago Mendes pede desculpas a Neymar após carrinho: \'Espero que esteja bem\'\r\nMELHOR FUTEBOL DO MUNDO\r\nFUTEBOL BRASILEIRO\r\nÁrbitro relata xingamentos por parte de dirigentes do Flamengo.\r\n\r\n\r\n\r\n', 'Marquinhos fala sobre possível chegada de Messi ao PSG', 9, 1, 12, 2020, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codredator` int(11) NOT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `codturma` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codredator`, `sobrenome`, `nome`, `cidade`, `telefone`, `ddd`, `email`, `dia`, `codturma`, `mes`, `ano`) VALUES
(1, 'Monteiro', 'Lucas', 'Santo André', '44444-4444', 11, 'lucasmonteiro@gmail.com', 12, 4, 6, 2020),
(3, 'Silva', 'Luis', 'Santo André', '44444-4433', 11, 'silvaluis@gmail.com', 2, 4, 9, 2020),
(6, 'santos', 'luiza', 'maua', '33333-1111', 11, 'luizasantos@gmail.com', 19, 4, 11, 2019),
(8, 'souza', 'miguel', 'ribeirão pires', '44224-4444', 11, 'miguelsouza@gmail.com', 12, 1, 3, 2020),
(9, 'fabiano', 'marcos', 'ribeirao pires', '44444-5555', 11, 'morcosfab@gmail.com', 1, 4, 9, 2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codturma` int(11) NOT NULL,
  `turma` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codturma`, `turma`) VALUES
(1, '1C'),
(2, '1F'),
(3, '2C'),
(4, '2F'),
(5, '3C'),
(6, '3F');

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
  ADD PRIMARY KEY (`codcategoria`);

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
  ADD PRIMARY KEY (`codnoticia`),
  ADD KEY `codredator` (`codredator`),
  ADD KEY `codcategoria` (`codcategoria`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codredator`),
  ADD KEY `codturma` (`codturma`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codturma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codnoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `codredator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codturma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codredator`) REFERENCES `redator` (`codredator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codcategoria`) REFERENCES `categoria` (`codcategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codturma`) REFERENCES `turma` (`codturma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

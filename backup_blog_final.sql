-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: final
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autor` (
  `ID_AUTOR` int(11) NOT NULL,
  `NOME_AUTOR` varchar(250) NOT NULL,
  `DESCRICAO_AUTOR` varchar(500) NOT NULL,
  PRIMARY KEY (`ID_AUTOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'LARA GARCIA','Lara, espírito livre desde sempre, criativa, designer formada na UFSC e, atualmente aprendendo a ser mãe..Solo! Aqui escrevo sobre coisas práticas e úteis da maternidade leve, livros, filmes e séries que empoderam, e faço curadoria de coisas úteis para mulheres – mamães ou não – que não encontro com facilidade no Google. Sejam bem vindas, e sintam-se abraçadas.'),(2,'K.','arquiteta que virou fotógrafa. ariana que é mais taurina. viciada em café. aspirante a artista, astróloga & barista. criadora de coisas');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `ID_CATEGORIA` int(11) NOT NULL,
  `NOME_CATEGORIA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_CATEGORIA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (0,'Categoria'),(1,'Auto Cuidado'),(2,'Ideias'),(3,'Casa & decor'),(4,'Filmes & sÃ©ries'),(5,'Lifestyle');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentario` (
  `ID_COMENTARIO` int(11) NOT NULL,
  `NOME` varchar(250) NOT NULL,
  `DATA_DE_PUBLICACAO` date DEFAULT NULL,
  `COMENTARIO_CONTEUDO` varchar(1500) DEFAULT NULL,
  `ID_POST` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_COMENTARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (1,'Roberta','2022-07-26','\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam et tristique nunc, et rutrum magna. Nam mattis dui libero. Nullam sed dapibus mauris. Nam vel finibus sem, vel lacinia magna. Nunc interdum lectus vel arcu condimentum, quis finibus erat congue. Duis dictum quam vel sem vulputate, vel imperdiet lectus viverra.',1),(2,'Manoela','2022-07-26','\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam et tristique nunc, et rutrum magna. Nam mattis dui libero. Nullam sed dapibus mauris. Nam vel finibus sem, vel lacinia magna. Nunc interdum lectus vel arcu condimentum, quis finibus erat congue. Duis dictum quam vel sem vulputate, vel imperdiet lectus viverra.',1),(3,'Patricia','2022-06-23','\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam et tristique nunc, et rutrum magna. Nam mattis dui libero. Nullam sed dapibus mauris. Nam vel finibus sem, vel lacinia magna. Nunc interdum lectus vel arcu condimentum, quis finibus erat congue. Duis dictum quam vel sem vulputate, vel imperdiet lectus viverra.',2),(4,'Suelen','2022-06-23','\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam et tristique nunc, et rutrum magna. Nam mattis dui libero. Nullam sed dapibus mauris. Nam vel finibus sem, vel lacinia magna. Nunc interdum lectus vel arcu condimentum, quis finibus erat congue. Duis dictum quam vel sem vulputate, vel imperdiet lectus viverra.',3),(5,'Juliana','2021-11-09','\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam et tristique nunc, et rutrum magna. Nam mattis dui libero. Nullam sed dapibus mauris. Nam vel finibus sem, vel lacinia magna. Nunc interdum lectus vel arcu condimentum, quis finibus erat congue. Duis dictum quam vel sem vulputate, vel imperdiet lectus viverra.',3),(6,'Barbara','2022-02-01','\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam et tristique nunc, et rutrum magna. Nam mattis dui libero. Nullam sed dapibus mauris. Nam vel finibus sem, vel lacinia magna. Nunc interdum lectus vel arcu condimentum, quis finibus erat congue. Duis dictum quam vel sem vulputate, vel imperdiet lectus viverra.',4),(7,'Isabela','2022-02-01','\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam et tristique nunc, et rutrum magna. Nam mattis dui libero. Nullam sed dapibus mauris. Nam vel finibus sem, vel lacinia magna. Nunc interdum lectus vel arcu condimentum, quis finibus erat congue. Duis dictum quam vel sem vulputate, vel imperdiet lectus viverra.',5),(8,'Amanda','2022-03-04','\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nam et tristique nunc, et rutrum magna. Nam mattis dui libero. Nullam sed dapibus mauris. Nam vel finibus sem, vel lacinia magna. Nunc interdum lectus vel arcu condimentum, quis finibus erat congue. Duis dictum quam vel sem vulputate, vel imperdiet lectus viverra.',5);
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `ID_POST` int(11) NOT NULL AUTO_INCREMENT,
  `TITULO_POST` varchar(300) NOT NULL,
  `CONTEUDO_POST` varchar(1500) NOT NULL,
  `DATA_DE_PUBLICACAO` date NOT NULL,
  `QTD_DE_ACESSOS` varchar(15) NOT NULL,
  PRIMARY KEY (`ID_POST`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'40+ Ideias de Unhas Decoradas pra Todos os Estilos pra Você se Inspirar','Unhas decoradas viraram uma tendência nos ultimos anos. Se você digitar unhas decoradas na hashtag do Instagram vai aparecer muita coisa, mas muita coisa mesmo, entre coisas lindas e coisas não tão lindas assim. Já se você digitar unhas decoradas no Pinterest, essa busca já vai ficar bem mais refinada, e o próprio Pinterest vai te dar sugestões de que tipo de unhas buscar.\n\nMas, na minha opinião, não tem nada como o bom e velho artigo de blog bem estruturado para encontrar o que a gente quer. Eu já fiz alguns posts de unhas decoradas bem específicos aqui pro blog, são eles:\n\nMas pra esse resolvi fazer uma listona mais completa de quais tipos de unhas decoradas são possíveis e mais buscadas na internet. O engraçado é que eu mal sei fazer as minhas unhas.\n\nSou designer, e amo tudo que tem umas aesthetic ou estética bonita, inclusive unhas. Por isso nesse post resolvi listar as unhas mais bonitas e originais que consegui encontrar no insta, bem categorizadas e organizadas pra sua inspiração.\n\nTodas as unhas decoradas abaixo servem tanto para unhas naturais quanto unhas de gel decoradas, curtas ou compridas.','2022-07-26','6270'),(2,'Achadinhos de Cozinha do Pré Amazon Prime Day 2022','oi! Lá vem eu como boa cadelinha da Amazon fazer um post rápido com achadinhos fofos por lá no pré Prime Day 2022. Eu amo utensílios de cozinha, tanto que já fiz um post com lista de utensílios de cozinha por aqui, e outro post explicando porque que eu gosto muito de comprar pela Amazon e acho vantagem ser membro do Amazon Prime mesmo sendo uma bela mão de vaca heheh.\n\nPois, todo ano entre junho e julho rola o Amazon Prime Day, que e um monte de promoções pra quem é assinante Prime. Sim, tem muita coisa que não vale a pena, mas muitas que valem muito e ficam mais baratas no Prime Day do que na Black Friday. Um exemplo é o meu Kindle! Comprei no Prime Day ano passado e fui verificar o preço na Black Friday depois estava mais caro.\n\nMas indo ao ponto desse post. A prime day desse ano (2022) serão dos dias 12 e 13 de julho, mas um mês antes a Amazon já começa a fazer promoções. Me deparei com uma leve 3 pague 4 de itens de cozinha e abaixo seguem as minhas favoritas!\n\nVale lembrar que essa promo é só pra quem é assinante Prime. Todos os itens daí são com frete grátis!','2022-06-26','8356'),(3,'Ideas de Unhas Amendoadas Decoradas','Mais um post de inspiração que adoro fazer por aqui: unhas decoradas! Hoje a inspiração são unhas amendoadas decoradas! Já fiz um post de inspiração de unhas decoradas pretas e um de unhas em tom pastel!\n\nPor toda a vida eu gostei do formato quadrado para unhas, mas no último ano as possibilidades e aesthetic pra unhas amendoadas chamaram muito mais a minha atenção.\n\nAcho que o formato redondo traz um ar mais feminino, e as possibilidades de decoração nas unhas almond me parecem maiores e mais interessantes também! Então vamos lá, sejam unhas foscas, francesinhas ou em gel, as unhas almond decoradas são lindas demais.\n\nPS: Muitas dessas unhas dá pra você se aventurar e fazer sozinha em casa! você vai precisar de um kit de pincéis para decoração unhas ideais pra isso. Muitas dessas unhas é possível imitar mesmo sem tutorial, só com coordenação motora, vontade e os pincéis corretos.','2021-11-09','7463'),(4,'Tudo o que a Amazon e o Amazon Prime oferecem e por quê vale muito a pena a assinatura','Esse vai ser o guia mais completo sobre os programas da Amazon e Amazon Prime que você vai ler. Ontem eu estava em um barzinho com uma amiga e ela me perguntou se valia a pena assinar a Amazon Prime. Me perguntou se as séries disponíveis eram boas, e quando eu disse que o Amazon Prime era muito bom porque não eram só séries ela ficou espantada, não fazia ideia dos outros benefícios, e isso me inspirou a escrever esse post.\n\nA Amazon ainda é relativamente nova no gigantesco mercado de e-commerce do Brasil, e a Amazon Prime acaba sendo uma novidade que ainda deixa algumas pessoas confusas, já que nenhuma outro streaming é misturado com maketplace e nenhum outro marketplace é misturado com streaming no mundo. Então vamos por partes: o que é a Amazon e do que se trata o Amazon Prime e tudo o que ele inclui. Nesse post vou explicar:\n\n1- O que é a Amazon?\n\n2 – Diferenciais, programas e benefícios da Amazon\n\n3 – O que é o Amazon Prime e o que stá incluso\n\nAntes de tudo: se você gosta de ver séries, ler livros e fazer compras, pode apostar que vale a pena!','2022-02-01','9542'),(5,'Ideias autênticas de Fotos Tumblr Sozinha','Muitas mulheres e meninas buscam por ideias de fotos tumblr sozinha, ou seja, fotos ¨conceito¨, que transmitem uma certa história e personalidade e ficam bem legais no Instagram. Fiquei um pouco insegura se fazia esse tipo de post de inspiração porque não queria estimular o desespero pela imagem perfeita no Insta, dó que, ao mesmo tempo, vejo algo de muito positivo nesse tipo de foto. Fotos tumblr, por carregarem um conceito ou estética muito marcantes, acabam sendo, ao meu ver, uma ótima oportunidade pra auto conhecimento, pra explorarmos nossa identidade e as possibilidades de como queremos nos sentir e o que consequente expressamos pro mundo a partir da imagem que construímos pra nós mesmas.\n\nPor exemplo, se você tirar uma foto com a estética toda rosa e clara, bem feminina, com vestido solto com babados em um picnic, pode se supreender com a versão de você que está ali e amar e entender mais sobre si mesma e querer inspirar outras pessoas com isso. Por isso, acho que o mais importante sempre, na hora de tirar suas fotos, é ser autêntica.','2022-03-04','5642');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_autor`
--

DROP TABLE IF EXISTS `post_autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_autor` (
  `ID_POSTAUTOR` int(11) NOT NULL,
  `ID_POST` int(11) NOT NULL,
  `NOME_POST` varchar(200) NOT NULL,
  `ID_AUTOR` int(11) NOT NULL,
  `NOME_AUTOR` varchar(150) NOT NULL,
  PRIMARY KEY (`ID_POSTAUTOR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_autor`
--

LOCK TABLES `post_autor` WRITE;
/*!40000 ALTER TABLE `post_autor` DISABLE KEYS */;
INSERT INTO `post_autor` VALUES (1,1,'40+ Ideias de Unhas Decoradas pra Todos os Estilos pra Você se Inspirar',1,'LARA GARCIA'),(2,1,'40+ Ideias de Unhas Decoradas pra Todos os Estilos pra Você se Inspirar',2,'k.'),(3,2,'Achadinhos de Cozinha do Pré Amazon Prime Day 2022',2,'k.'),(4,3,'Ideias de Unhas Amendoadas Decoradas',1,'LARA GARCIA'),(5,4,'Tudo o que a Amazon e o Amazon Prime oferecem e por quê vale muito a pena a assinatura',1,'LARA GARCIA'),(6,4,'Tudo o que a Amazon e o Amazon Prime oferecem e por quê vale muito a pena a assinatura',2,'K.'),(7,5,'Ideias autênticas de Fotos Tumblr Sozinha',1,'LARA GARCIA');
/*!40000 ALTER TABLE `post_autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categoria`
--

DROP TABLE IF EXISTS `post_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_categoria` (
  `ID_POSTCATEGORIA` int(11) NOT NULL,
  `ID_POST` int(11) NOT NULL,
  `TITULO_POST` varchar(500) NOT NULL,
  `ID_CATEGORIA` int(11) NOT NULL,
  `CATEGORIA` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_POSTCATEGORIA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categoria`
--

LOCK TABLES `post_categoria` WRITE;
/*!40000 ALTER TABLE `post_categoria` DISABLE KEYS */;
INSERT INTO `post_categoria` VALUES (1,1,'40+ Ideias de Unhas Decoradas pra Todos os Estilos pra Você se Inspirar',1,'Autocuidado'),(2,1,'40+ Ideias de Unhas Decoradas pra Todos os Estilos pra Você se Inspirar',2,'Ideias'),(3,2,'Achadinhos de Cozinha do Pré Amazon Prime Day 2022',3,'Casa & decor'),(4,2,'Achadinhos de Cozinha do Pré Amazon Prime Day 2022',2,'Ideias'),(5,3,'Ideas de Unhas Amendoadas Decoradas',1,'Autocuidado'),(6,3,'Ideas de Unhas Amendoadas Decoradas',2,'Ideias'),(7,4,'Tudo o que a Amazon e o Amazon Prime oferecem e por quê vale muito a pena a assinatura',4,'Filmes & séries'),(8,4,'Tudo o que a Amazon e o Amazon Prime oferecem e por quê vale muito a pena a assinatura',5,'LifeStyle'),(9,5,'Ideias autênticas de fotos Tumblr sozinha',2,'Ideias');
/*!40000 ALTER TABLE `post_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `ID_USUARIO` int(11) NOT NULL AUTO_INCREMENT,
  `NOME_USUARIO` varchar(150) NOT NULL,
  `EMAIL_USUARIO` varchar(50) NOT NULL,
  `SENHA` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_USUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (7,'arthur','arthurrsj1@hotmail.com','123'),(8,'ARTHUR RAFAEL DE SOUZA JESUS','arthurrsj123@gmail.com','11234'),(9,'arthur r','arthur@arthur','1234');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-16 19:21:00

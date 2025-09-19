-- Current sql file was generated after introspecting the database
-- If you want to run this migration please uncomment this code before executing migrations
/*
CREATE TABLE `anexos` (
	`id` int(11) AUTO_INCREMENT NOT NULL,
	`caminho` varchar(255) DEFAULT 'NULL',
	`tarefa_id` int(11) DEFAULT 'NULL',
	`tipo` varchar(255) DEFAULT 'NULL'
);
--> statement-breakpoint
CREATE TABLE `arquivos` (
	`id` int(11) AUTO_INCREMENT NOT NULL,
	`codigo_cliente` varchar(255) DEFAULT 'NULL',
	`nome_arquivo` varchar(255) DEFAULT 'NULL',
	`conteudo_arquivo` longblob DEFAULT 'NULL',
	`tipo_arquivo` varchar(255) DEFAULT 'NULL',
	`tamanho_arquivo` varchar(255) DEFAULT 'NULL'
);
--> statement-breakpoint
CREATE TABLE `boleto` (
	`ID` int(11) AUTO_INCREMENT NOT NULL,
	`ID_CLIENTE` int(11) DEFAULT 'NULL',
	`BANCO` varchar(255) DEFAULT 'NULL',
	`CARTEIRA` varchar(255) DEFAULT 'NULL',
	`LAYOUT` varchar(255) DEFAULT 'NULL'
);
--> statement-breakpoint
CREATE TABLE `cep` (
	`CEP` char(9) NOT NULL DEFAULT '''''',
	`LOGRADOURO` varchar(100) NOT NULL DEFAULT '''''',
	`COMPLEMENTO` varchar(100) NOT NULL DEFAULT '''''',
	`BAIRRO_I` varchar(100) NOT NULL DEFAULT '''''',
	`BAIRRO_F` varchar(100) NOT NULL DEFAULT '''''',
	`UF` char(2) NOT NULL DEFAULT '''''',
	`LOCALIDADE` int(10) unsigned NOT NULL DEFAULT 0,
	`MUNICIPIO` char(4) NOT NULL DEFAULT '''''',
	`DISTRITO` char(2) NOT NULL DEFAULT '''''',
	`SUBDISTRITO` char(2) NOT NULL DEFAULT ''''''
);
--> statement-breakpoint
CREATE TABLE `clientes` (
	`CODIGO` int(10) unsigned AUTO_INCREMENT NOT NULL,
	`COD_MATRIZ` int(10) unsigned NOT NULL DEFAULT 0,
	`ATENDENTE` char(40) NOT NULL DEFAULT '''''',
	`CONTRATO` char(4) DEFAULT 'NULL',
	`ACESSO` char(1) NOT NULL DEFAULT '''L''',
	`DATA_LIBERACAO` date NOT NULL DEFAULT '''0000-00-00''',
	`DIAS_USO` int(10) unsigned NOT NULL DEFAULT 0,
	`DATA_ACESSO` date NOT NULL DEFAULT '''0000-00-00''',
	`RAZAO_SOCIAL` varchar(100) NOT NULL DEFAULT '''''',
	`NOME_FANTASIA` varchar(50) NOT NULL DEFAULT '''''',
	`NOME_REDUZ` varchar(10) NOT NULL DEFAULT '''''',
	`IP` varchar(15) NOT NULL DEFAULT '''''',
	`CNPJ` varchar(20) NOT NULL DEFAULT '''''',
	`INSCRICAO` varchar(20) NOT NULL DEFAULT '''''',
	`CEP` varchar(9) NOT NULL DEFAULT '''''',
	`ENDERECO` varchar(100) NOT NULL DEFAULT '''''',
	`NUMERO` varchar(10) NOT NULL DEFAULT '''''',
	`COMPLEMENTO` varchar(100) NOT NULL DEFAULT '''''',
	`BAIRRO` varchar(100) NOT NULL DEFAULT '''''',
	`CIDADE` varchar(50) NOT NULL DEFAULT '''''',
	`ESTADO` char(2) NOT NULL DEFAULT '''''',
	`EMAIL` varchar(50) NOT NULL DEFAULT '''''',
	`TELEFONE` varchar(15) NOT NULL DEFAULT '''''',
	`FAX` varchar(15) NOT NULL DEFAULT '''''',
	`SISTEMA` char(1) NOT NULL DEFAULT '''2''',
	`EMPRESA` char(1) NOT NULL DEFAULT '''N''',
	`QTDE_FILIAIS` int(10) unsigned NOT NULL DEFAULT 1,
	`QTDE_TERMINAIS` int(10) unsigned NOT NULL DEFAULT 1,
	`HOST` varchar(255) NOT NULL DEFAULT '''''',
	`PORTA_TS` int(10) unsigned NOT NULL DEFAULT 0,
	`USUARIO_TS` varchar(20) NOT NULL DEFAULT '''''',
	`SENHA_TS` varchar(20) NOT NULL DEFAULT '''''',
	`SENHA_ROOT_TS` varchar(20) NOT NULL DEFAULT '''''',
	`PORTA_SSH` int(10) unsigned NOT NULL DEFAULT 0,
	`USUARIO_SSH` varchar(20) NOT NULL DEFAULT '''''',
	`SENHA_SSH` varchar(20) NOT NULL DEFAULT '''''',
	`SENHA_ROOT_SSH` varchar(20) NOT NULL DEFAULT '''''',
	`PORTA_VNC` int(10) unsigned NOT NULL DEFAULT 0,
	`SENHA_VNC` varchar(20) NOT NULL DEFAULT '''''',
	`PORTA_MYSQL` int(10) unsigned NOT NULL DEFAULT 0,
	`USUARIO_MYSQL` varchar(20) NOT NULL DEFAULT '''''',
	`SENHA_MYSQL` varchar(20) NOT NULL DEFAULT '''''',
	`SENHA_ROOT_MYSQL` varchar(20) NOT NULL DEFAULT '''''',
	`ID_TEAMVIEWER` int(10) unsigned NOT NULL DEFAULT 0,
	`SENHA_TEAMVIEWER` varchar(50) NOT NULL DEFAULT '''''',
	`EMAIL_CONT` varchar(50) NOT NULL DEFAULT '''''',
	`VERSAO_FINANCEIRO` int(10) unsigned NOT NULL DEFAULT 0,
	`VERSAO_VENDAS` int(10) unsigned NOT NULL DEFAULT 0,
	`VERSAO_CONTABIL` int(11) NOT NULL DEFAULT 0,
	`VERSAO_PCP` int(10) unsigned NOT NULL DEFAULT 0,
	`VERSAO_SHOPPING` int(10) unsigned NOT NULL DEFAULT 0,
	`VERSAO_TELEVENDAS` int(10) unsigned NOT NULL DEFAULT 0,
	`DATA_CADASTRO` date NOT NULL DEFAULT '''0000-00-00''',
	`CONTATO` varchar(255) DEFAULT 'NULL',
	`NOME_RADMIN` varchar(255) DEFAULT 'NULL',
	`SENHA_RADMIN` varchar(255) DEFAULT 'NULL',
	`NOME_BANCO` varchar(255) DEFAULT 'NULL',
	`ATIVO` char(1) DEFAULT '''S''',
	`CAMINHO_BKP` varchar(255) DEFAULT 'NULL',
	`OBSERVACAO` varchar(255) DEFAULT 'NULL',
	`DATA_MODIFICACAO` varchar(255) DEFAULT 'NULL',
	`ARQUIVO_MAIS_RECENTE` varchar(255) DEFAULT 'NULL',
	`NOME_CERTIFICADO` varchar(255) DEFAULT 'NULL',
	`SENHA_CERTIFICADO` varchar(255) DEFAULT 'NULL',
	`CERTIFICADO` blob DEFAULT 'NULL',
	`DATA_ATUALIZACAO` date DEFAULT '''0000-00-00''',
	`LATITUDE` varchar(255) DEFAULT 'NULL',
	`LONGITUDE` varchar(255) DEFAULT 'NULL',
	`TIPO_VERSAO` varchar(255) DEFAULT 'NULL',
	`ATUALIZAR` enum('S','N') DEFAULT '''N''',
	CONSTRAINT `CNPJ` UNIQUE(`CNPJ`)
);
--> statement-breakpoint
CREATE TABLE `clientes bk` (
	`CODIGO` int(10) unsigned AUTO_INCREMENT NOT NULL,
	`COD_MATRIZ` int(10) unsigned NOT NULL DEFAULT 0,
	`ATENDENTE` char(40) NOT NULL DEFAULT '''''',
	`CONTRATO` char(4) DEFAULT 'NULL',
	`ACESSO` char(1) NOT NULL DEFAULT '''L''',
	`DATA_LIBERACAO` date NOT NULL DEFAULT '''0000-00-00''',
	`DIAS_USO` int(10) unsigned NOT NULL DEFAULT 0,
	`DATA_ACESSO` date NOT NULL DEFAULT '''0000-00-00''',
	`RAZAO_SOCIAL` varchar(100) NOT NULL DEFAULT '''''',
	`NOME_FANTASIA` varchar(50) NOT NULL DEFAULT '''''',
	`NOME_REDUZ` varchar(10) NOT NULL DEFAULT '''''',
	`IP` varchar(15) NOT NULL DEFAULT '''''',
	`CNPJ` varchar(20) NOT NULL DEFAULT '''''',
	`INSCRICAO` varchar(20) NOT NULL DEFAULT '''''',
	`CEP` varchar(9) NOT NULL DEFAULT '''''',
	`ENDERECO` varchar(100) NOT NULL DEFAULT '''''',
	`NUMERO` varchar(10) NOT NULL DEFAULT '''''',
	`COMPLEMENTO` varchar(50) NOT NULL DEFAULT '''''',
	`BAIRRO` varchar(50) NOT NULL DEFAULT '''''',
	`CIDADE` varchar(50) NOT NULL DEFAULT '''''',
	`ESTADO` char(2) NOT NULL DEFAULT '''''',
	`EMAIL` varchar(50) NOT NULL DEFAULT '''''',
	`TELEFONE` varchar(15) NOT NULL DEFAULT '''''',
	`FAX` varchar(15) NOT NULL DEFAULT '''''',
	`SISTEMA` char(1) NOT NULL DEFAULT '''2''',
	`EMPRESA` char(1) NOT NULL DEFAULT '''N''',
	`QTDE_FILIAIS` int(10) unsigned NOT NULL DEFAULT 1,
	`QTDE_TERMINAIS` int(10) unsigned NOT NULL DEFAULT 1,
	`HOST` varchar(255) NOT NULL DEFAULT '''''',
	`PORTA_TS` int(10) unsigned NOT NULL DEFAULT 0,
	`USUARIO_TS` varchar(20) NOT NULL DEFAULT '''''',
	`SENHA_TS` varchar(20) NOT NULL DEFAULT '''''',
	`SENHA_ROOT_TS` varchar(20) NOT NULL DEFAULT '''''',
	`PORTA_SSH` int(10) unsigned NOT NULL DEFAULT 0,
	`USUARIO_SSH` varchar(20) NOT NULL DEFAULT '''''',
	`SENHA_SSH` varchar(20) NOT NULL DEFAULT '''''',
	`SENHA_ROOT_SSH` varchar(20) NOT NULL DEFAULT '''''',
	`PORTA_VNC` int(10) unsigned NOT NULL DEFAULT 0,
	`SENHA_VNC` varchar(20) NOT NULL DEFAULT '''''',
	`PORTA_MYSQL` int(10) unsigned NOT NULL DEFAULT 0,
	`USUARIO_MYSQL` varchar(20) NOT NULL DEFAULT '''''',
	`SENHA_MYSQL` varchar(20) NOT NULL DEFAULT '''''',
	`SENHA_ROOT_MYSQL` varchar(20) NOT NULL DEFAULT '''''',
	`ID_TEAMVIEWER` int(10) unsigned NOT NULL DEFAULT 0,
	`SENHA_TEAMVIEWER` varchar(50) NOT NULL DEFAULT '''''',
	`EMAIL_CONT` varchar(50) NOT NULL DEFAULT '''''',
	`VERSAO_FINANCEIRO` int(10) unsigned NOT NULL DEFAULT 0,
	`VERSAO_VENDAS` int(10) unsigned NOT NULL DEFAULT 0,
	`VERSAO_CONTABIL` int(11) NOT NULL DEFAULT 0,
	`VERSAO_PCP` int(10) unsigned NOT NULL DEFAULT 0,
	`VERSAO_SHOPPING` int(10) unsigned NOT NULL DEFAULT 0,
	`VERSAO_TELEVENDAS` int(10) unsigned NOT NULL DEFAULT 0,
	`DATA_CADASTRO` date NOT NULL DEFAULT '''0000-00-00''',
	CONSTRAINT `CNPJ` UNIQUE(`CNPJ`)
);
--> statement-breakpoint
CREATE TABLE `convites` (
	`id_convite` int(11) NOT NULL,
	`fk_id_destinatario` int(11) DEFAULT 'NULL',
	`fk_id_remetente` int(11) DEFAULT 'NULL',
	`fk_id_evento` int(11) DEFAULT 'NULL',
	`status` tinyint(1) DEFAULT 'NULL'
);
--> statement-breakpoint
CREATE TABLE `distritos` (
	`UF` char(2) NOT NULL DEFAULT '''00''',
	`MUNICIPIO` char(4) NOT NULL DEFAULT '''0000''',
	`CODIGO` char(2) NOT NULL DEFAULT '''00''',
	`NOME` varchar(50) NOT NULL DEFAULT ''''''
);
--> statement-breakpoint
CREATE TABLE `empresas` (
	`CODIGO` int(10) unsigned AUTO_INCREMENT NOT NULL,
	`COD_SITE` int(10) unsigned NOT NULL DEFAULT 0,
	`FIS_JUR` char(1) DEFAULT 'NULL',
	`NOME` varchar(100) NOT NULL DEFAULT '''''',
	`APELIDO` varchar(100) NOT NULL DEFAULT '''''',
	`CPF` varchar(20) DEFAULT 'NULL',
	`RG` varchar(20) DEFAULT 'NULL',
	`SUFRAMA` char(9) NOT NULL DEFAULT '''''',
	`ATAC_VAREJO` enum('A','V') NOT NULL DEFAULT '''V''',
	`CMC` varchar(15) NOT NULL DEFAULT '''''',
	`DATA_NASC` date DEFAULT 'NULL',
	`SITE` varchar(50) NOT NULL DEFAULT '''''',
	`EMAIL_FISCAL` varchar(100) NOT NULL DEFAULT '''''',
	`ENDERECO` varchar(100) DEFAULT 'NULL',
	`NUMERO` varchar(10) DEFAULT 'NULL',
	`COMPLEMENTO` varchar(100) DEFAULT 'NULL',
	`BAIRRO` varchar(100) DEFAULT 'NULL',
	`CEP` char(9) DEFAULT '''00000-000''',
	`CIDADE` varchar(50) DEFAULT 'NULL',
	`ESTADO` char(2) DEFAULT 'NULL',
	`PAIS` char(4) NOT NULL DEFAULT '''1058''',
	`TELEFONE_RES` varchar(15) NOT NULL DEFAULT '''''',
	`TELEFONE_COM` varchar(15) NOT NULL DEFAULT '''''',
	`CELULAR` varchar(15) NOT NULL DEFAULT '''''',
	`TOLLFREE` varchar(15) NOT NULL DEFAULT '''''',
	`EMAIL` varchar(100) NOT NULL DEFAULT '''''',
	`DATA_CADASTRO` date DEFAULT 'NULL',
	`DATA_RECAD` date DEFAULT 'NULL',
	`VENDEDOR` int(10) unsigned DEFAULT 0,
	`REDE_GRUPO` int(10) unsigned NOT NULL DEFAULT 0,
	`OBSERVACOES` blob DEFAULT 'NULL',
	`FPAGAMENTO` int(10) unsigned DEFAULT 0,
	`TIPO_REC` int(11) NOT NULL DEFAULT 0,
	`TRANSPORTADORA` int(10) unsigned DEFAULT 0,
	`ENDERECO_C` varchar(100) DEFAULT 'NULL',
	`NUMERO_C` varchar(10) DEFAULT 'NULL',
	`COMPLEMENTO_C` varchar(100) DEFAULT 'NULL',
	`BAIRRO_C` varchar(100) DEFAULT 'NULL',
	`CIDADE_C` varchar(50) DEFAULT 'NULL',
	`ESTADO_C` char(2) DEFAULT 'NULL',
	`PAIS_C` char(4) NOT NULL DEFAULT '''1058''',
	`CEP_C` char(9) DEFAULT '''00000-000''',
	`EMAIL_C` varchar(100) NOT NULL DEFAULT '''''',
	`CREDITO` float(10,2) NOT NULL DEFAULT 0,
	`MIDIA` enum('','E','N','I','J','L','O','P','R','V','T') DEFAULT 'NULL',
	`LOCAL_TRABALHO` varchar(50) DEFAULT 'NULL',
	`CARGO` varchar(20) DEFAULT 'NULL',
	`SALARIO` float(10,2) DEFAULT 'NULL',
	`TEMPO_SERVICO` varchar(20) DEFAULT 'NULL',
	`RAMAL` varchar(10) DEFAULT 'NULL',
	`ESTADO_CIVIL` char(1) DEFAULT 'NULL',
	`SEXO` char(1) DEFAULT 'NULL',
	`RESIDENCIA` char(1) DEFAULT 'NULL',
	`CONJUGE` varchar(50) DEFAULT 'NULL',
	`CPF_CONJUGE` varchar(20) NOT NULL DEFAULT '''''',
	`RG_CONJUGE` varchar(20) NOT NULL DEFAULT '''''',
	`LOCAL_TRABALHO_CONJUGE` varchar(50) NOT NULL DEFAULT '''''',
	`DATA_CONTRATACAO_CONJUGE` date NOT NULL DEFAULT '''0000-00-00''',
	`CEP_CONJUGE` char(9) NOT NULL DEFAULT '''00000-000''',
	`ENDERECO_CONJUGE` varchar(100) NOT NULL DEFAULT '''''',
	`NUMERO_CONJUGE` varchar(10) NOT NULL DEFAULT '''''',
	`COMPLEMENTO_CONJUGE` varchar(100) NOT NULL DEFAULT '''''',
	`BAIRRO_CONJUGE` varchar(100) NOT NULL DEFAULT '''''',
	`CIDADE_CONJUGE` varchar(50) NOT NULL DEFAULT '''''',
	`ESTADO_CONJUGE` char(2) NOT NULL DEFAULT '''''',
	`PAIS_CONJUGE` char(4) NOT NULL DEFAULT '''1058''',
	`TELEFONE_COM_CONJUGE` varchar(15) NOT NULL DEFAULT '''''',
	`CARGO_CONJUGE` varchar(40) NOT NULL DEFAULT '''''',
	`SALARIO_CONJUGE` float(10,2) NOT NULL DEFAULT 0,
	`TELEFONE_FAX_CONJUGE` varchar(15) NOT NULL DEFAULT '''''',
	`DATA_NASC_CONJUGE` date NOT NULL DEFAULT '''0000-00-00''',
	`PAI` varchar(50) DEFAULT 'NULL',
	`MAE` varchar(50) DEFAULT 'NULL',
	`CEP_PAI_MAE` char(9) NOT NULL DEFAULT '''00000-000''',
	`ENDERECO_PAI_MAE` varchar(100) NOT NULL DEFAULT '''''',
	`NUMERO_PAI_MAE` varchar(10) NOT NULL DEFAULT '''''',
	`COMPLEMENTO_PAI_MAE` varchar(100) NOT NULL DEFAULT '''''',
	`BAIRRO_PAI_MAE` varchar(100) NOT NULL DEFAULT '''''',
	`CIDADE_PAI_MAE` varchar(50) NOT NULL DEFAULT '''''',
	`ESTADO_PAI_MAE` char(2) NOT NULL DEFAULT '''''',
	`PAIS_PAI_MAE` char(4) NOT NULL DEFAULT '''1058''',
	`TELEFONE_PAI_MAE` varchar(15) NOT NULL DEFAULT '''''',
	`RESTRICOES` enum('N','S') NOT NULL DEFAULT '''N''',
	`NUM_CONSULTA` bigint(20) NOT NULL DEFAULT 0,
	`CONTABIL` varchar(50) NOT NULL,
	`CONTABIL_TEL` varchar(15) NOT NULL DEFAULT '''''',
	`REF1` varchar(50) DEFAULT 'NULL',
	`TEL1` varchar(15) NOT NULL DEFAULT '''''',
	`REF2` varchar(50) DEFAULT 'NULL',
	`TEL2` varchar(15) NOT NULL DEFAULT '''''',
	`REF3` varchar(50) DEFAULT 'NULL',
	`TEL3` varchar(15) NOT NULL DEFAULT '''''',
	`BANCO7` varchar(20) NOT NULL,
	`AGENCIA7` varchar(20) NOT NULL,
	`CONTA7` varchar(20) NOT NULL,
	`REF4` varchar(50) DEFAULT 'NULL',
	`EMAIL4` varchar(50) NOT NULL DEFAULT '''''',
	`TOLLFREE4` varchar(15) NOT NULL DEFAULT '''''',
	`CONTATO4` varchar(50) NOT NULL,
	`TEL4` varchar(15) NOT NULL DEFAULT '''''',
	`CLIENTE_DESDE4` date NOT NULL DEFAULT '''0000-00-00''',
	`FORMA_PGTO4` bigint(20) NOT NULL DEFAULT 0,
	`PONTUAL4` bigint(20) NOT NULL DEFAULT 0,
	`DATA_MAIOR_COMPRA4` date NOT NULL DEFAULT '''0000-00-00''',
	`VAL_MAIOR_COMPRA4` float(10,2) unsigned NOT NULL DEFAULT 0,
	`DATA_ULT_COMPRA4` date NOT NULL DEFAULT '''0000-00-00''',
	`VAL_ULT_COMPRA4` float(10,2) unsigned NOT NULL DEFAULT 0,
	`REF5` varchar(50) DEFAULT 'NULL',
	`EMAIL5` varchar(50) NOT NULL DEFAULT '''''',
	`TOLLFREE5` varchar(15) NOT NULL DEFAULT '''''',
	`CONTATO5` varchar(50) NOT NULL,
	`TEL5` varchar(15) NOT NULL DEFAULT '''''',
	`CLIENTE_DESDE5` date NOT NULL DEFAULT '''0000-00-00''',
	`FORMA_PGTO5` bigint(20) NOT NULL DEFAULT 0,
	`PONTUAL5` bigint(20) NOT NULL DEFAULT 0,
	`DATA_MAIOR_COMPRA5` date NOT NULL DEFAULT '''0000-00-00''',
	`VAL_MAIOR_COMPRA5` float(10,2) unsigned NOT NULL DEFAULT 0,
	`DATA_ULT_COMPRA5` date NOT NULL DEFAULT '''0000-00-00''',
	`VAL_ULT_COMPRA5` float(10,2) unsigned NOT NULL DEFAULT 0,
	`REF6` varchar(50) DEFAULT 'NULL',
	`EMAIL6` varchar(50) NOT NULL DEFAULT '''''',
	`TOLLFREE6` varchar(15) NOT NULL DEFAULT '''''',
	`CONTATO6` varchar(50) NOT NULL,
	`TEL6` varchar(15) DEFAULT 'NULL',
	`CLIENTE_DESDE6` date NOT NULL DEFAULT '''0000-00-00''',
	`FORMA_PGTO6` bigint(20) NOT NULL DEFAULT 0,
	`PONTUAL6` bigint(20) NOT NULL DEFAULT 0,
	`DATA_MAIOR_COMPRA6` date NOT NULL DEFAULT '''0000-00-00''',
	`VAL_MAIOR_COMPRA6` float(10,2) unsigned NOT NULL DEFAULT 0,
	`DATA_ULT_COMPRA6` date NOT NULL DEFAULT '''0000-00-00''',
	`VAL_ULT_COMPRA6` float(10,2) unsigned NOT NULL DEFAULT 0,
	`REF7` varchar(50) DEFAULT 'NULL',
	`TEL7` varchar(15) NOT NULL DEFAULT '''''',
	`BANCO8` varchar(20) NOT NULL,
	`AGENCIA8` varchar(20) NOT NULL,
	`CONTA8` varchar(20) NOT NULL,
	`REF8` varchar(50) DEFAULT 'NULL',
	`TEL8` varchar(15) NOT NULL DEFAULT '''''',
	`BANCO9` varchar(20) NOT NULL,
	`AGENCIA9` varchar(20) NOT NULL,
	`CONTA9` varchar(20) NOT NULL,
	`REF9` varchar(50) DEFAULT 'NULL',
	`TEL9` varchar(15) NOT NULL DEFAULT '''''',
	`LIMITE_CREDITO` float(10,2) DEFAULT 'NULL',
	`PRIMEIRA_COMPRA` date DEFAULT 'NULL',
	`ULTIMA_COMPRA` date DEFAULT 'NULL',
	`BLOQUEADO` char(1) DEFAULT 'NULL',
	`DIAS_BLOQUEIO` int(10) unsigned DEFAULT 0,
	`COD_TABELA` int(10) unsigned DEFAULT 0,
	`SERASA_ATUALIZADO` date NOT NULL DEFAULT '''0000-00-00''',
	`MONITORADO_ATE` date NOT NULL DEFAULT '''0000-00-00''',
	`PERC_PONTUAL` float(5,2) NOT NULL DEFAULT 0,
	`QTDE_PONTUAL` bigint(20) unsigned NOT NULL DEFAULT 0,
	`MAIOR_ACUMULO` float(10,2) NOT NULL DEFAULT 0,
	`DT_MAIOR_ACUMULO` date NOT NULL DEFAULT '''0000-00-00''',
	`EMPREST` float(10,2) NOT NULL DEFAULT 0,
	`BANCO_EMPREST` varchar(100) NOT NULL,
	`QTDE_EMPREST` bigint(20) unsigned NOT NULL DEFAULT 0,
	`VALOR_PRIM_COMPRA` float(10,2) DEFAULT 'NULL',
	`VALOR_ULT_COMPRA` float(10,2) DEFAULT 'NULL',
	`ATIVO` char(1) DEFAULT '''S''',
	`EMPRESA` char(1) DEFAULT '''S''',
	`CHEQ_DEVOL_EMPRESA` float(10,2) DEFAULT 'NULL',
	`QTDE_CHEQ_DEVOL_EMPRESA` bigint(20) unsigned NOT NULL DEFAULT 0,
	`CHEQ_DEVOL_OUTROS` float(10,2) DEFAULT 'NULL',
	`QTDE_CHEQ_DEVOL_OUTROS` bigint(20) unsigned NOT NULL DEFAULT 0,
	`PROTESTOS_EMPRESA` float(10,2) DEFAULT 'NULL',
	`QTDE_PROTESTOS_EMPRESA` bigint(20) unsigned NOT NULL DEFAULT 0,
	`PROTESTOS_OUTROS` float(10,2) DEFAULT 'NULL',
	`QTDE_PROTESTOS_OUTROS` bigint(20) unsigned NOT NULL DEFAULT 0,
	`TITULOS_EMPRESA` float(10,2) DEFAULT 'NULL',
	`QTDE_TITULOS_EMPRESA` bigint(20) unsigned NOT NULL DEFAULT 0,
	`TITULOS_OUTROS` float(10,2) DEFAULT 'NULL',
	`QTDE_TITULOS_OUTROS` int(10) unsigned NOT NULL DEFAULT 0,
	`HISTORICO` text NOT NULL,
	`CONSUMIDOR_FINAL` char(1) DEFAULT 'NULL',
	`PERC_DESC` float(10,2) DEFAULT 0,
	`PERC_ACRESC` float(10,2) DEFAULT 0,
	`SERIE` int(10) unsigned DEFAULT 0,
	`DIA_VENC` int(10) unsigned DEFAULT 1,
	`SENHA` varchar(50) DEFAULT 'NULL',
	`QUOTA_EMAIL` int(10) unsigned DEFAULT 0,
	`CORTESIA` char(1) DEFAULT '''N''',
	`COD_CONTA` bigint(20) NOT NULL DEFAULT 0,
	`SITUACAO` int(11) DEFAULT 0,
	`BLOQ_MOTIVO` text NOT NULL,
	`CONTRIB` enum('N','S') NOT NULL DEFAULT '''N''',
	`ATIV_EMPR` enum('D','I','O','M','E','F','P','R','U') NOT NULL DEFAULT '''U''',
	`ENDERECO_E` varchar(100) DEFAULT 'NULL',
	`NUMERO_E` varchar(10) DEFAULT 'NULL',
	`COMPLEMENTO_E` varchar(100) DEFAULT 'NULL',
	`BAIRRO_E` varchar(100) DEFAULT 'NULL',
	`CIDADE_E` varchar(50) DEFAULT 'NULL',
	`ESTADO_E` char(2) DEFAULT 'NULL',
	`PAIS_E` char(4) NOT NULL DEFAULT '''1058''',
	`CEP_E` char(9) DEFAULT '''00000-000''',
	`EMAIL_E` varchar(100) NOT NULL DEFAULT '''''',
	`DIA_VENC_PADRAO` int(10) unsigned NOT NULL DEFAULT 0,
	`COBRAR_ACRESC` enum('N','S') NOT NULL DEFAULT '''N''',
	`UF_RG` varchar(11) DEFAULT 'NULL',
	`NO_SITE` enum('N','S') NOT NULL DEFAULT '''N''',
	`CRED_LIBERADO` float(10,2) NOT NULL DEFAULT 0,
	`CEP_T` varchar(9) NOT NULL DEFAULT '''''',
	`ENDERECO_T` varchar(40) NOT NULL DEFAULT '''''',
	`NUMERO_T` varchar(10) NOT NULL DEFAULT '''''',
	`COMPLEMENTO_T` varchar(100) NOT NULL DEFAULT '''''',
	`BAIRRO_T` varchar(100) NOT NULL DEFAULT '''''',
	`CIDADE_T` varchar(50) NOT NULL DEFAULT '''''',
	`ESTADO_T` char(2) NOT NULL DEFAULT '''''',
	`PAIS_T` char(4) NOT NULL DEFAULT '''''',
	`TELEFONE_T` varchar(15) NOT NULL DEFAULT '''''',
	`OBS_BANCARIA` blob NOT NULL,
	`OBS_COMERCIAL1` blob NOT NULL,
	`OBS_COMERCIAL2` blob NOT NULL,
	`OBS_COMERCIAL3` blob NOT NULL,
	`OBS_PESSOAL` blob NOT NULL,
	`EXIGIR_CONTATO` enum('N','S') NOT NULL DEFAULT '''N''',
	`VAL_FATOR` float(10,2) NOT NULL DEFAULT 0,
	`POTENCIAL_COMPRA` enum('','0','20','40','60','80','100') DEFAULT 'NULL',
	`DATA_ULT_CONTATO` date DEFAULT '''0000-00-00''',
	`DATA_PROX_CONTATO` date DEFAULT 'NULL',
	`FRETE` enum('S','F','C','T') NOT NULL DEFAULT '''S''',
	`REGIME_TRIBUT` enum('S','SE','N') NOT NULL DEFAULT '''S''',
	`EXIGIR_IDEN_INT` enum('N','S') NOT NULL DEFAULT '''N''',
	`MIDIA_CLI` int(10) unsigned NOT NULL DEFAULT 0,
	`PREFERENCIAL` enum('N','S') DEFAULT '''N''',
	`NUM_CALCADO` int(11) DEFAULT 'NULL'
);
--> statement-breakpoint
CREATE TABLE `estados` (
	`CODIGO` char(2) NOT NULL DEFAULT '''00''',
	`SIGLA` char(2) NOT NULL DEFAULT '''''',
	`NOME` varchar(20) NOT NULL DEFAULT '''''',
	CONSTRAINT `SIGLA` UNIQUE(`SIGLA`)
);
--> statement-breakpoint
CREATE TABLE `eventos` (
	`id_evento` int(11) AUTO_INCREMENT NOT NULL,
	`fk_id_usuario` int(11) DEFAULT 'NULL',
	`titulo` varchar(255) NOT NULL,
	`descricao` varchar(255) NOT NULL,
	`cor` varchar(7) DEFAULT 'NULL',
	`inicio` datetime NOT NULL,
	`termino` datetime DEFAULT 'NULL',
	`background_cor` varchar(255) DEFAULT 'NULL',
	`cadastradopor` int(11) DEFAULT 'NULL',
	`alteradopor` int(11) DEFAULT 'NULL'
);
--> statement-breakpoint
CREATE TABLE `events` (
	`id` int(11) AUTO_INCREMENT NOT NULL,
	`title` varchar(220) NOT NULL,
	`color` varchar(45) NOT NULL,
	`start` datetime NOT NULL,
	`end` datetime NOT NULL,
	`obs` text DEFAULT 'NULL',
	`user_id` int(11) DEFAULT 'NULL'
);
--> statement-breakpoint
CREATE TABLE `intersig` (
	`CODIGO` int(10) unsigned NOT NULL DEFAULT 0,
	`COD_MATRIZ` int(10) unsigned NOT NULL DEFAULT 0,
	`ATENDENTE` char(40) NOT NULL DEFAULT '''''',
	`CONTRATO` char(4) DEFAULT 'NULL',
	`ACESSO` char(1) NOT NULL DEFAULT '''L''',
	`DATA_LIBERACAO` date NOT NULL DEFAULT '''0000-00-00''',
	`DIAS_USO` int(10) unsigned NOT NULL DEFAULT 0,
	`DATA_ACESSO` date NOT NULL DEFAULT '''0000-00-00''',
	`RAZAO_SOCIAL` varchar(100) NOT NULL DEFAULT '''''',
	`NOME_FANTASIA` varchar(50) NOT NULL DEFAULT '''''',
	`NOME_REDUZ` varchar(10) NOT NULL DEFAULT '''''',
	`IP` varchar(15) NOT NULL DEFAULT '''''',
	`CNPJ` varchar(20) NOT NULL DEFAULT '''''',
	`INSCRICAO` varchar(20) NOT NULL DEFAULT '''''',
	`SITUACAO` varchar(30) DEFAULT 'NULL',
	`CEP` varchar(9) NOT NULL DEFAULT '''''',
	`ENDERECO` varchar(100) NOT NULL DEFAULT '''''',
	`NUMERO` varchar(10) NOT NULL DEFAULT '''''',
	`COMPLEMENTO` varchar(50) NOT NULL DEFAULT '''''',
	`BAIRRO` varchar(50) NOT NULL DEFAULT '''''',
	`CIDADE` varchar(50) NOT NULL DEFAULT '''''',
	`ESTADO` char(2) NOT NULL DEFAULT '''''',
	`EMAIL` varchar(50) NOT NULL DEFAULT '''''',
	`TELEFONE` varchar(14) NOT NULL DEFAULT '''''',
	`FAX` varchar(14) NOT NULL DEFAULT '''''',
	`SISTEMA` char(1) NOT NULL DEFAULT '''2''',
	`EMPRESA` char(1) NOT NULL DEFAULT '''N''',
	`QTDE_FILIAIS` int(10) unsigned NOT NULL DEFAULT 1,
	`QTDE_TERMINAIS` int(10) unsigned NOT NULL DEFAULT 1,
	`HOST` varchar(255) NOT NULL DEFAULT '''''',
	`PORTA_TS` int(10) unsigned NOT NULL DEFAULT 0,
	`USUARIO_TS` varchar(20) NOT NULL DEFAULT '''''',
	`SENHA_TS` varchar(20) NOT NULL DEFAULT '''''',
	`SENHA_ROOT_TS` varchar(20) NOT NULL DEFAULT '''''',
	`PORTA_SSH` int(10) unsigned NOT NULL DEFAULT 0,
	`USUARIO_SSH` varchar(20) NOT NULL DEFAULT '''''',
	`SENHA_SSH` varchar(20) NOT NULL DEFAULT '''''',
	`SENHA_ROOT_SSH` varchar(20) NOT NULL DEFAULT '''''',
	`PORTA_VNC` int(10) unsigned NOT NULL DEFAULT 0,
	`SENHA_VNC` varchar(20) NOT NULL DEFAULT '''''',
	`PORTA_MYSQL` int(10) unsigned NOT NULL DEFAULT 0,
	`USUARIO_MYSQL` varchar(20) NOT NULL DEFAULT '''''',
	`SENHA_MYSQL` varchar(20) NOT NULL DEFAULT '''''',
	`SENHA_ROOT_MYSQL` varchar(20) NOT NULL DEFAULT '''''',
	`ID_TEAMVIEWER` int(10) unsigned NOT NULL DEFAULT 0,
	`SENHA_TEAMVIEWER` varchar(50) NOT NULL DEFAULT '''''',
	`EMAIL_CONT` varchar(50) NOT NULL DEFAULT '''''',
	`VERSAO_FINANCEIRO` int(10) unsigned NOT NULL DEFAULT 0,
	`VERSAO_VENDAS` int(10) unsigned NOT NULL DEFAULT 0,
	`VERSAO_CONTABIL` int(11) NOT NULL DEFAULT 0,
	`VERSAO_PCP` int(10) unsigned NOT NULL DEFAULT 0,
	`VERSAO_SHOPPING` int(10) unsigned NOT NULL DEFAULT 0,
	`VERSAO_TELEVENDAS` int(10) unsigned NOT NULL DEFAULT 0,
	`DATA_CADASTRO` date NOT NULL DEFAULT '''0000-00-00'''
);
--> statement-breakpoint
CREATE TABLE `localidades` (
	`CODIGO` int(10) unsigned AUTO_INCREMENT NOT NULL,
	`NOME` varchar(50) NOT NULL DEFAULT '''''',
	`CEP` char(9) NOT NULL DEFAULT '''''',
	`UF` char(2) NOT NULL DEFAULT ''''''
);
--> statement-breakpoint
CREATE TABLE `municipios` (
	`UF` char(2) NOT NULL DEFAULT '''00''',
	`CODIGO` char(4) NOT NULL DEFAULT '''0000''',
	`DIGITO` char(1) NOT NULL DEFAULT '''0''',
	`NOME` varchar(50) NOT NULL DEFAULT ''''''
);
--> statement-breakpoint
CREATE TABLE `paises` (
	`CODIGO` char(4) NOT NULL DEFAULT '''''',
	`NOME` varchar(50) NOT NULL DEFAULT '''''',
	CONSTRAINT `NOME` UNIQUE(`NOME`)
);
--> statement-breakpoint
CREATE TABLE `projects` (
	`id_project` int(11) AUTO_INCREMENT NOT NULL,
	`id_user` int(11) NOT NULL,
	`project_name` varchar(30) NOT NULL,
	`project_description` varchar(255) NOT NULL,
	`project_colour` varchar(7) NOT NULL,
	`start_date` date NOT NULL,
	`end_date` date NOT NULL
);
--> statement-breakpoint
CREATE TABLE `subdistritos` (
	`UF` char(2) NOT NULL DEFAULT '''00''',
	`MUNICIPIO` char(4) NOT NULL DEFAULT '''0000''',
	`DISTRITO` char(2) NOT NULL DEFAULT '''00''',
	`CODIGO` char(2) NOT NULL DEFAULT '''00''',
	`NOME` varchar(100) NOT NULL DEFAULT ''''''
);
--> statement-breakpoint
CREATE TABLE `task` (
	`id_task` int(11) AUTO_INCREMENT NOT NULL,
	`title_task` varchar(255) NOT NULL,
	`description_task` varchar(1500) DEFAULT 'NULL',
	`date_task` date NOT NULL,
	`time_task` time DEFAULT 'NULL',
	`status_task` varchar(255) NOT NULL,
	`id_user` varchar(255) NOT NULL,
	`cliente_id` varchar(255) DEFAULT 'NULL',
	`cliente_nome` varchar(500) DEFAULT 'NULL',
	`alterado_por` varchar(255) DEFAULT 'NULL',
	`data_alteracao` date DEFAULT 'NULL',
	`hora_alteracao` time DEFAULT 'NULL',
	`data_fim` date DEFAULT 'NULL',
	`hora_fim` time DEFAULT 'NULL',
	`finalizado_por` varchar(255) DEFAULT 'NULL',
	`tipo_tarefa` varchar(255) DEFAULT 'NULL',
	`id_tipo_tarefa` varchar(255) DEFAULT 'NULL'
);
--> statement-breakpoint
CREATE TABLE `tasks` (
	`id` int(11) AUTO_INCREMENT NOT NULL,
	`title` varchar(255) NOT NULL,
	`client` varchar(100) DEFAULT 'NULL',
	`status` enum('novo','em_curso','atualizar','resolvido','pausada') NOT NULL DEFAULT '''novo''',
	`estimated_time` time DEFAULT 'NULL',
	`order_in_column` int(11) DEFAULT 0,
	`created_at` timestamp DEFAULT 'current_timestamp()',
	`updated_at` timestamp DEFAULT 'current_timestamp()',
	`descricao` varchar(255) DEFAULT 'NULL',
	`actual_time` time DEFAULT 'NULL',
	`codigo_cli` int(11) DEFAULT 'NULL',
	`id_project` int(11) DEFAULT 'NULL',
	`data_inicio` date DEFAULT 'NULL',
	`prioridade` enum('baixa','media','alta') DEFAULT '''baixa'''
);
--> statement-breakpoint
CREATE TABLE `task_tipo` (
	`id` int(11) NOT NULL,
	`tipotarefa_nome` varchar(255) DEFAULT 'NULL'
);
--> statement-breakpoint
CREATE TABLE `ts` (
	`id` int(11) AUTO_INCREMENT NOT NULL,
	`ts` varchar(255) DEFAULT 'NULL',
	`cliente` varchar(255) DEFAULT 'NULL',
	`senha` varchar(255) DEFAULT 'NULL',
	`memoria` varchar(255) DEFAULT 'NULL',
	`disco` varchar(255) DEFAULT 'NULL'
);
--> statement-breakpoint
CREATE TABLE `user1` (
	`id_user` int(11) AUTO_INCREMENT NOT NULL,
	`nome_user` varchar(255) DEFAULT 'NULL',
	`email_user` varchar(255) DEFAULT 'NULL',
	`senha_user` varchar(32) DEFAULT 'NULL',
	`type` varchar(10) DEFAULT 'NULL',
	`surname` varchar(255) DEFAULT 'NULL'
);
--> statement-breakpoint
CREATE TABLE `users` (
	`id` int(11) AUTO_INCREMENT NOT NULL,
	`nome_user` varchar(255) DEFAULT 'NULL',
	`email_user` varchar(255) DEFAULT 'NULL',
	`senha_user` varchar(32) DEFAULT 'NULL',
	`type` varchar(10) DEFAULT 'NULL',
	`surname` varchar(255) DEFAULT 'NULL',
	`reset_token` varchar(255) DEFAULT 'NULL',
	`reset_token_validade` datetime DEFAULT 'NULL'
);
--> statement-breakpoint
CREATE TABLE `usuarios` (
	`id_usuario` int(11) AUTO_INCREMENT NOT NULL,
	`nome` varchar(15) NOT NULL,
	`senha` text NOT NULL
);
--> statement-breakpoint
ALTER TABLE `projects` ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users`(`id_user`) ON DELETE restrict ON UPDATE restrict;--> statement-breakpoint
CREATE INDEX `LOGRADOURO` ON `cep` (`LOGRADOURO`);--> statement-breakpoint
CREATE INDEX `LOCALIDADE` ON `cep` (`LOCALIDADE`);--> statement-breakpoint
CREATE INDEX `SUBDISTRITO` ON `cep` (`SUBDISTRITO`);--> statement-breakpoint
CREATE INDEX `DISTRITO` ON `cep` (`DISTRITO`);--> statement-breakpoint
CREATE INDEX `MUNICIPIO` ON `cep` (`MUNICIPIO`);--> statement-breakpoint
CREATE INDEX `UF` ON `cep` (`UF`);--> statement-breakpoint
CREATE INDEX `NOME` ON `distritos` (`NOME`);--> statement-breakpoint
CREATE INDEX `MUNICIPIO` ON `distritos` (`MUNICIPIO`);--> statement-breakpoint
CREATE INDEX `CODIGO` ON `distritos` (`CODIGO`);--> statement-breakpoint
CREATE INDEX `UF` ON `distritos` (`UF`);--> statement-breakpoint
CREATE INDEX `NOME` ON `empresas` (`NOME`);--> statement-breakpoint
CREATE INDEX `APELIDO` ON `empresas` (`APELIDO`);--> statement-breakpoint
CREATE INDEX `VENDEDOR` ON `empresas` (`VENDEDOR`);--> statement-breakpoint
CREATE INDEX `CPF` ON `empresas` (`CPF`);--> statement-breakpoint
CREATE INDEX `LOCALIDADE` ON `empresas` (`ESTADO`,`CIDADE`);--> statement-breakpoint
CREATE INDEX `COD_SITE` ON `empresas` (`COD_SITE`);--> statement-breakpoint
CREATE INDEX `FIS_JUR` ON `empresas` (`FIS_JUR`);--> statement-breakpoint
CREATE INDEX `ATAC_VAREJO` ON `empresas` (`ATAC_VAREJO`);--> statement-breakpoint
CREATE INDEX `fk_id_usuario` ON `eventos` (`fk_id_usuario`);--> statement-breakpoint
CREATE INDEX `LOCALIDADE` ON `localidades` (`NOME`,`UF`);--> statement-breakpoint
CREATE INDEX `NOME` ON `municipios` (`NOME`);--> statement-breakpoint
CREATE INDEX `CODIGO` ON `municipios` (`CODIGO`);--> statement-breakpoint
CREATE INDEX `UF` ON `municipios` (`UF`);--> statement-breakpoint
CREATE INDEX `NOME` ON `subdistritos` (`NOME`);--> statement-breakpoint
CREATE INDEX `MUNICIPIO` ON `subdistritos` (`MUNICIPIO`);--> statement-breakpoint
CREATE INDEX `DISTRITO` ON `subdistritos` (`DISTRITO`);--> statement-breakpoint
CREATE INDEX `CODIGO` ON `subdistritos` (`CODIGO`);--> statement-breakpoint
CREATE INDEX `UF` ON `subdistritos` (`UF`);
*/
-- MySQL Script generated by MySQL Workbench
-- Tue Dec 19 19:32:14 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `polimero` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `polimeros` DEFAULT CHARACTER SET utf8 ;
USE `polimero` ;

-- -----------------------------------------------------
-- Table `polimero`.`Grupo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `polimero`.`Grupo` ;

CREATE TABLE IF NOT EXISTS `polimero`.`Grupo` (
  `Grupo_numero` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Grupo_numero`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `polimero`.`UF`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `polimero`.`UF` ;

CREATE TABLE IF NOT EXISTS `polimero`.`UF` (
  `UF` VARCHAR(2) NOT NULL,
  `Descricao` VARCHAR(50) NOT NULL,
  `Regiao` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`UF`),
  UNIQUE INDEX `UF_UNIQUE` (`UF` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `polimero`.`Municipio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `polimero`.`Municipio` ;

CREATE TABLE IF NOT EXISTS `polimero`.`Municipio` (
  `Municipio_numero` INT NOT NULL,
  `Municipio` VARCHAR(45) NOT NULL,
  `Mun_IBGE` INT NOT NULL,
  `UF` VARCHAR(2) NOT NULL,
  PRIMARY KEY (`Municipio_numero`, `UF`),
  INDEX `fk_Municipio_UF1_idx` (`UF` ASC) VISIBLE,
  CONSTRAINT `fk_Municipio_UF1`
    FOREIGN KEY (`UF`)
    REFERENCES `polimero`.`UF` (`UF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `polimero`.`Endereco`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `polimero`.`Endereco` ;

CREATE TABLE IF NOT EXISTS `polimero`.`Endereco` (
  `Cod_log` INT NOT NULL,
  `Regiao` VARCHAR(50) NOT NULL,
  `Bairro` VARCHAR(50) NOT NULL,
  `Logradouro` VARCHAR(40) NOT NULL,
  `Endereco` VARCHAR(100) NOT NULL,
  `CEP` VARCHAR(10) NOT NULL,
  `Municipio_numero` INT NOT NULL,
  PRIMARY KEY (`Cod_log`, `Municipio_numero`),
  INDEX `fk_Endereco_Municipio1_idx` (`Municipio_numero` ASC) VISIBLE,
  CONSTRAINT `fk_Endereco_Municipio1`
    FOREIGN KEY (`Municipio_numero`)
    REFERENCES `polimero`.`Municipio` (`Municipio_numero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `polimero`.`Cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `polimero`.`Cliente` ;

CREATE TABLE IF NOT EXISTS `polimero`.`Cliente` (
  `Cliente_numero` INT NOT NULL,
  `Cliente` VARCHAR(80) NOT NULL,
  `CNPJ` VARCHAR(15) NOT NULL,
  `IE` VARCHAR(25) NULL,
  `IM` VARCHAR(14) NULL,
  `Telefones` VARCHAR(60) NULL,
  `Numero_compra` INT NOT NULL,
  `Numero_entrega` INT NOT NULL,
  `Grupo_numero` INT NOT NULL,
  `Cod_log_compra` INT NOT NULL,
  `Cod_log_entrega` INT NOT NULL,
  PRIMARY KEY (`Cliente_numero`, `Grupo_numero`, `Cod_log_compra`, `Cod_log_entrega`),
  INDEX `fk_Cliente_Grupo_idx` (`Grupo_numero` ASC) VISIBLE,
  UNIQUE INDEX `CNPJ_UNIQUE` (`CNPJ` ASC) VISIBLE,
  INDEX `fk_Cliente_Endereco1_idx` (`Cod_log_compra` ASC) VISIBLE,
  INDEX `fk_Cliente_Endereco2_idx` (`Cod_log_entrega` ASC) VISIBLE,
  CONSTRAINT `fk_Cliente_Grupo`
    FOREIGN KEY (`Grupo_numero`)
    REFERENCES `polimero`.`Grupo` (`Grupo_numero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cliente_Endereco1`
    FOREIGN KEY (`Cod_log_compra`)
    REFERENCES `polimero`.`Endereco` (`Cod_log`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cliente_Endereco2`
    FOREIGN KEY (`Cod_log_entrega`)
    REFERENCES `polimero`.`Endereco` (`Cod_log`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `polimero`.`Transportadora`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `polimero`.`Transportadora` ;

CREATE TABLE IF NOT EXISTS `polimero`.`Transportadora` (
  `Transportadora_numero` INT NOT NULL,
  `Nome` VARCHAR(100) NOT NULL,
  `CNPJ` VARCHAR(15) NOT NULL,
  `IE` VARCHAR(25) NOT NULL,
  `IM` VARCHAR(14) NOT NULL,
  `Telefones` VARCHAR(60) NULL,
  `Numero` INT NOT NULL,
  `Grupo_numero` INT NOT NULL,
  `Cod_log` INT NOT NULL,
  PRIMARY KEY (`Transportadora_numero`, `Grupo_numero`, `Cod_log`),
  INDEX `fk_Transportadora_Grupo1_idx` (`Grupo_numero` ASC) VISIBLE,
  INDEX `fk_Transportadora_Endereco1_idx` (`Cod_log` ASC) VISIBLE,
  CONSTRAINT `fk_Transportadora_Grupo1`
    FOREIGN KEY (`Grupo_numero`)
    REFERENCES `polimero`.`Grupo` (`Grupo_numero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Transportadora_Endereco1`
    FOREIGN KEY (`Cod_log`)
    REFERENCES `polimero`.`Endereco` (`Cod_log`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `polimero`.`Familia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `polimero`.`Familia` ;

CREATE TABLE IF NOT EXISTS `polimero`.`Familia` (
  `Familia_numero` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Familia_numero`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `polimero`.`Linha`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `polimero`.`Linha` ;

CREATE TABLE IF NOT EXISTS `polimero`.`Linha` (
  `Linha_numero` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Linha_numero`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `polimero`.`Produto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `polimero`.`Produto` ;

CREATE TABLE IF NOT EXISTS `polimero`.`Produto` (
  `Produto_numero` INT NOT NULL,
  `Nome` VARCHAR(160) NOT NULL,
  `Codigo` VARCHAR(15) NOT NULL COMMENT 'Código de cadastro do produto',
  `Grupo` INT NOT NULL,
  `Fabricante` VARCHAR(60) NULL,
  `Fabricado_por` VARCHAR(30) NULL,
  `Conteudo_unidade` DECIMAL(21,6) NULL,
  `Unidade_medida` VARCHAR(15) NOT NULL,
  `Peso_liquido` DECIMAL(21,6) NULL,
  `Peso_bruto` DECIMAL(21,6) NULL,
  `Preco_compra` DECIMAL(21,6) NULL,
  `Preco_venda` DECIMAL(21,6) NULL,
  `Estoque_minimo` INT NULL,
  `Estoque_maximo` INT NULL,
  `Estoque_ideal` INT NULL,
  `Tempo_reposicao` INT NULL COMMENT 'Tempo em dias',
  `Familia_numero` INT NOT NULL,
  `Linha_numero` INT NOT NULL,
  PRIMARY KEY (`Produto_numero`, `Familia_numero`, `Linha_numero`),
  INDEX `fk_Produto_Familia1_idx` (`Familia_numero` ASC) VISIBLE,
  INDEX `fk_Produto_Linha1_idx` (`Linha_numero` ASC) VISIBLE,
  CONSTRAINT `fk_Produto_Familia1`
    FOREIGN KEY (`Familia_numero`)
    REFERENCES `polimero`.`Familia` (`Familia_numero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Produto_Linha1`
    FOREIGN KEY (`Linha_numero`)
    REFERENCES `polimero`.`Linha` (`Linha_numero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `polimero`.`Operacao`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `polimero`.`Operacao` ;

CREATE TABLE IF NOT EXISTS `polimero`.`Operacao` (
  `Operacao_numero` INT NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Operacao_numero`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `polimero`.`Uso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `polimero`.`Uso` ;

CREATE TABLE IF NOT EXISTS `polimero`.`Uso` (
  `Uso_numero` INT NOT NULL,
  `Uso` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Uso_numero`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `polimero`.`PedidoVendaItem`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `polimero`.`PedidoVendaItem` ;

CREATE TABLE IF NOT EXISTS `polimero`.`PedidoVendaItem` (
  `Serie` INT NOT NULL,
  `Pedido_numero` DECIMAL(21,6) NOT NULL,
  `Qtde` INT NULL,
  `Preco_venda` DECIMAL(21,6) NULL,
  `Peso_liquido` DECIMAL(21,6) NULL,
  `Peso_bruto` DECIMAL(21,6) NULL,
  `Valor_frete` DECIMAL(21,6) NULL,
  `Produto_numero` INT NOT NULL,
  `Preco_Total` DECIMAL(21,6) NULL,
  `Peso_liquido_total` DECIMAL(21,6) NULL,
  `Peso_bruto_total` DECIMAL(21,6) NULL,
  PRIMARY KEY (`Serie`, `Pedido_numero`, `Produto_numero`),
  INDEX `fk_PedidoVendaItem_Produto1_idx` (`Produto_numero` ASC) VISIBLE,
  CONSTRAINT `fk_PedidoVendaItem_Produto1`
    FOREIGN KEY (`Produto_numero`)
    REFERENCES `polimero`.`Produto` (`Produto_numero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `polimero`.`PedidoVenda`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `polimero`.`PedidoVenda` ;

CREATE TABLE IF NOT EXISTS `polimero`.`PedidoVenda` (
  `Serie` INT NOT NULL,
  `Pedido_Numero` DECIMAL(21,6) NOT NULL,
  `Ordem_venda` VARCHAR(60) NOT NULL,
  `Emitido_em` DATE NOT NULL,
  `Previsao_entrega` DATE NOT NULL,
  `Pedido_cliente` VARCHAR(45) NOT NULL COMMENT 'Ordem de compra emitida pelo cliente',
  `DT_embarque` DATE NOT NULL,
  `DT_entregue` DATE NOT NULL,
  `Ordem_embarque` VARCHAR(45) NULL COMMENT 'Número da ordem de embarque',
  `Transporte` VARCHAR(60) NULL,
  `Volume` INT NULL,
  `Especie` VARCHAR(60) NULL,
  `Valor_mercadoria` DECIMAL(21,6) NULL,
  `Frete` DECIMAL(21,6) NULL,
  `Seguro` DECIMAL(21,6) NULL,
  `Acrescimos` DECIMAL(21,6) NULL,
  `Peso_liquido` DECIMAL(21,6) NULL,
  `Peso_bruto` DECIMAL(21,6) NULL,
  `Cliente_numero` INT NOT NULL,
  `Operacao_numero` INT NOT NULL,
  `Uso_numero` INT NOT NULL,
  `Transportadora_numero` INT NOT NULL,
  `Cod_log_entrega` INT NOT NULL,
  `OnTime` INT NULL COMMENT 'Pedido entregue no prazo',
  `InFull` INT NULL COMMENT 'Pedido entregue inteiro',
  `OnTime_InFull` INT NULL COMMENT 'Pedido entregue inteiro e no prazo',
  `PedidoVendaItem_Serie` INT NOT NULL,
  `PedidoVendaItem_Pedido_numero` DECIMAL(21,6) NOT NULL,
  PRIMARY KEY (`Serie`, `Pedido_Numero`, `Cliente_numero`, `Operacao_numero`, `Uso_numero`, `Transportadora_numero`, `Cod_log_entrega`, `PedidoVendaItem_Serie`, `PedidoVendaItem_Pedido_numero`),
  INDEX `fk_PedidoVenda_Cliente1_idx` (`Cliente_numero` ASC) VISIBLE,
  INDEX `fk_PedidoVenda_Operacao1_idx` (`Operacao_numero` ASC) VISIBLE,
  INDEX `fk_PedidoVenda_Uso1_idx` (`Uso_numero` ASC) VISIBLE,
  INDEX `fk_PedidoVenda_Transportadora1_idx` (`Transportadora_numero` ASC) VISIBLE,
  INDEX `fk_PedidoVenda_Endereco1_idx` (`Cod_log_entrega` ASC) VISIBLE,
  INDEX `fk_PedidoVenda_PedidoVendaItem1_idx` (`PedidoVendaItem_Serie` ASC, `PedidoVendaItem_Pedido_numero` ASC) VISIBLE,
  CONSTRAINT `fk_PedidoVenda_Cliente1`
    FOREIGN KEY (`Cliente_numero`)
    REFERENCES `polimero`.`Cliente` (`Cliente_numero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PedidoVenda_Operacao1`
    FOREIGN KEY (`Operacao_numero`)
    REFERENCES `polimero`.`Operacao` (`Operacao_numero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PedidoVenda_Uso1`
    FOREIGN KEY (`Uso_numero`)
    REFERENCES `polimero`.`Uso` (`Uso_numero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PedidoVenda_Transportadora1`
    FOREIGN KEY (`Transportadora_numero`)
    REFERENCES `polimero`.`Transportadora` (`Transportadora_numero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PedidoVenda_Endereco1`
    FOREIGN KEY (`Cod_log_entrega`)
    REFERENCES `polimero`.`Endereco` (`Cod_log`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PedidoVenda_PedidoVendaItem1`
    FOREIGN KEY (`PedidoVendaItem_Serie` , `PedidoVendaItem_Pedido_numero`)
    REFERENCES `polimero`.`PedidoVendaItem` (`Serie` , `Pedido_numero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `polimero`.`log`
-- -----------------------------------------------------

DROP TABLE IF EXISTS `polimero`.`log`;

CREATE TABLE IF NOT EXISTS `polimero`.`log`(
    id int,
    dt_registro date,
    user varchar(30),
    tipo_acao varchar(10),
    nome_tabela varchar(30),
    id_linha varchar(30)
)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

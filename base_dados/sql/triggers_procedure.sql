-- SEQUENCE do ID da tabela LOG
CREATE SEQUENCE SEQ_LOG nocycle nocache;

-- TRIGGER TG_SEQ_LOG
DELIMITER //

CREATE TRIGGER TG_SEQ_LOG BEFORE INSERT ON polimero.log FOR EACH ROW
  SET NEW.id = NULL;

//

DELIMITER ;

-- PROCEDURE proc_insere_log
DELIMITER //

CREATE PROCEDURE proc_insere_log
    (in nm_usuario VARCHAR(255), in tp_acao VARCHAR(255), in nm_tabela VARCHAR(255), in id_linha VARCHAR(255))
BEGIN
    INSERT INTO log VALUES (0, NOW(), nm_usuario, tp_acao, nm_tabela, id_linha);
END //

DELIMITER ;


-- -----------------------------------------------------
-- Trigger TG_LOG_GRUPO
-- -----------------------------------------------------
DELIMITER //

CREATE TRIGGER TG_LOG_GRUPO_AFTER_INSERT
AFTER INSERT ON grupo
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'INSERT', 'GRUPO', CAST(NEW.grupo_numero AS CHAR));
END //

CREATE TRIGGER TG_LOG_GRUPO_AFTER_UPDATE
AFTER UPDATE ON grupo
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'UPDATE', 'GRUPO', CAST(NEW.grupo_numero AS CHAR));
END //

CREATE TRIGGER TG_LOG_GRUPO_AFTER_DELETE
AFTER DELETE ON grupo
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'DELETE', 'GRUPO', CAST(OLD.grupo_numero AS CHAR));
END //

DELIMITER ;


-- -----------------------------------------------------
-- Trigger TG_LOG_UF
-- -----------------------------------------------------
DELIMITER //

CREATE TRIGGER TG_LOG_UF_AFTER_INSERT
AFTER INSERT ON UF
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'INSERT', 'UF', CAST(NEW.uf AS CHAR));
END //

CREATE TRIGGER TG_LOG_UF_AFTER_UPDATE
AFTER UPDATE ON UF
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'UPDATE', 'UF', CAST(NEW.uf AS CHAR));
END //

CREATE TRIGGER TG_LOG_UF_AFTER_DELETE
AFTER DELETE ON UF
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'DELETE', 'UF', CAST(OLD.uf AS CHAR));
END //

DELIMITER ;


-- -----------------------------------------------------
-- Trigger TG_LOG_MUN
-- -----------------------------------------------------
DELIMITER //

CREATE TRIGGER TG_LOG_MUN_AFTER_INSERT
AFTER INSERT ON MUNICIPIO
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'INSERT', 'MUNICIPIO', CAST(NEW.municipio_numero AS CHAR));
END //

CREATE TRIGGER TG_LOG_MUN_AFTER_UPDATE
AFTER UPDATE ON MUNICIPIO
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'UPDATE', 'MUNICIPIO', CAST(NEW.municipio_numero AS CHAR));
END //

CREATE TRIGGER TG_LOG_MUN_AFTER_DELETE
AFTER DELETE ON MUNICIPIO
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'DELETE', 'MUNICIPIO', CAST(OLD.municipio_numero AS CHAR));
END //

DELIMITER ;


-- -----------------------------------------------------
-- Trigger TG_LOG_EDR
-- -----------------------------------------------------
DELIMITER //

CREATE TRIGGER TG_LOG_EDR_AFTER_INSERT
AFTER INSERT ON ENDERECO
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'INSERT', 'ENDERECO', CAST(NEW.cod_log AS CHAR));
END //

CREATE TRIGGER TG_LOG_EDR_AFTER_UPDATE
AFTER UPDATE ON ENDERECO
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'UPDATE', 'ENDERECO', CAST(NEW.cod_log AS CHAR));
END //

CREATE TRIGGER TG_LOG_EDR_AFTER_DELETE
AFTER DELETE ON ENDERECO
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'DELETE', 'ENDERECO', CAST(OLD.cod_log AS CHAR));
END //

DELIMITER ;


-- -----------------------------------------------------
-- Trigger TG_LOG_CLT
-- -----------------------------------------------------
DELIMITER //

CREATE TRIGGER TG_LOG_CLT_AFTER_INSERT
AFTER INSERT ON CLIENTE
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'INSERT', 'CLIENTE', CAST(NEW.cliente_numero AS CHAR));
END //

CREATE TRIGGER TG_LOG_CLT_AFTER_UPDATE
AFTER UPDATE ON CLIENTE
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'UPDATE', 'CLIENTE', CAST(NEW.cliente_numero AS CHAR));
END //

CREATE TRIGGER TG_LOG_CLT_AFTER_DELETE
AFTER DELETE ON CLIENTE
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'DELETE', 'CLIENTE', CAST(OLD.cliente_numero AS CHAR));
END //

DELIMITER ;


-- -----------------------------------------------------
-- Trigger TG_LOG_TPR
-- -----------------------------------------------------
DELIMITER //

CREATE TRIGGER TG_LOG_TPR_AFTER_INSERT
AFTER INSERT ON Transportadora
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'INSERT', 'TRANSPORTADORA', CAST(NEW.transportadora_numero AS CHAR));
END //

CREATE TRIGGER TG_LOG_TPR_AFTER_UPDATE
AFTER UPDATE ON Transportadora
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'UPDATE', 'TRANSPORTADORA', CAST(NEW.transportadora_numero AS CHAR));
END //

CREATE TRIGGER TG_LOG_TPR_AFTER_DELETE
AFTER DELETE ON Transportadora
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'DELETE', 'TRANSPORTADORA', CAST(OLD.transportadora_numero AS CHAR));
END //

DELIMITER ;


-- -----------------------------------------------------
-- Trigger TG_LOG_FML
-- -----------------------------------------------------
DELIMITER //

CREATE TRIGGER TG_LOG_FML_AFTER_INSERT
AFTER INSERT ON FAMILIA
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'INSERT', 'FAMILIA', CAST(NEW.familia_numero AS CHAR));
END //

CREATE TRIGGER TG_LOG_FML_AFTER_UPDATE
AFTER UPDATE ON FAMILIA
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'UPDATE', 'FAMILIA', CAST(NEW.familia_numero AS CHAR));
END //

CREATE TRIGGER TG_LOG_FML_AFTER_DELETE
AFTER DELETE ON FAMILIA
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'DELETE', 'FAMILIA', CAST(OLD.familia_numero AS CHAR));
END //

DELIMITER ;


-- -----------------------------------------------------
-- Trigger TG_LOG_LINHA
-- -----------------------------------------------------
DELIMITER //

CREATE TRIGGER TG_LOG_LINHA_AFTER_INSERT
AFTER INSERT ON LINHA
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'INSERT', 'LINHA', CAST(NEW.linha_numero AS CHAR));
END //

CREATE TRIGGER TG_LOG_LINHA_AFTER_UPDATE
AFTER UPDATE ON LINHA
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'UPDATE', 'LINHA', CAST(NEW.linha_numero AS CHAR));
END //

CREATE TRIGGER TG_LOG_LINHA_AFTER_DELETE
AFTER DELETE ON LINHA
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'DELETE', 'LINHA', CAST(OLD.linha_numero AS CHAR));
END //

DELIMITER ;


-- -----------------------------------------------------
-- Trigger TG_LOG_PDT
-- -----------------------------------------------------
DELIMITER //

CREATE TRIGGER TG_LOG_PDT_AFTER_INSERT
AFTER INSERT ON PRODUTO
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'INSERT', 'PRODUTO', CAST(NEW.produto_numero AS CHAR));
END //

CREATE TRIGGER TG_LOG_PDT_AFTER_UPDATE
AFTER UPDATE ON PRODUTO
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'UPDATE', 'PRODUTO', CAST(NEW.produto_numero AS CHAR));
END //

CREATE TRIGGER TG_LOG_PDT_AFTER_DELETE
AFTER DELETE ON PRODUTO
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'DELETE', 'PRODUTO', CAST(OLD.produto_numero AS CHAR));
END //

DELIMITER ;


-- -----------------------------------------------------
-- Trigger TG_LOG_OPR
-- -----------------------------------------------------
DELIMITER //

CREATE TRIGGER TG_LOG_OPR_AFTER_INSERT
AFTER INSERT ON OPERACAO
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'INSERT', 'OPERACAO', CAST(NEW.operacao_numero AS CHAR));
END //

CREATE TRIGGER TG_LOG_OPR_AFTER_UPDATE
AFTER UPDATE ON OPERACAO
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'UPDATE', 'OPERACAO', CAST(NEW.operacao_numero AS CHAR));
END //

CREATE TRIGGER TG_LOG_OPR_AFTER_DELETE
AFTER DELETE ON OPERACAO
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'DELETE', 'OPERACAO', CAST(OLD.operacao_numero AS CHAR));
END //

DELIMITER ;


-- -----------------------------------------------------
-- Trigger TG_LOG_USO
-- -----------------------------------------------------
DELIMITER //

CREATE TRIGGER TG_LOG_USO_AFTER_INSERT
AFTER INSERT ON USO
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'INSERT', 'USO', CAST(NEW.uso_numero AS CHAR));
END //

CREATE TRIGGER TG_LOG_USO_AFTER_UPDATE
AFTER UPDATE ON USO
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'UPDATE', 'USO', CAST(NEW.uso_numero AS CHAR));
END //

CREATE TRIGGER TG_LOG_USO_AFTER_DELETE
AFTER DELETE ON USO
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'DELETE', 'USO', CAST(OLD.uso_numero AS CHAR));
END //

DELIMITER ;


-- -----------------------------------------------------
-- Trigger TG_LOG_PVI
-- -----------------------------------------------------
DELIMITER //

CREATE TRIGGER TG_LOG_PVI_AFTER_INSERT
AFTER INSERT ON PedidoVendaItem
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'INSERT', 'PEDIDOVENDAITEM', CONCAT(CAST(NEW.serie AS CHAR),',',CAST(NEW.pedido_numero AS CHAR)));
END //

CREATE TRIGGER TG_LOG_PVI_AFTER_UPDATE
AFTER UPDATE ON PedidoVendaItem
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'UPDATE', 'PEDIDOVENDAITEM', CONCAT(CAST(NEW.serie AS CHAR),',',CAST(NEW.pedido_numero AS CHAR)));
END //

CREATE TRIGGER TG_LOG_PVI_AFTER_DELETE
AFTER DELETE ON PedidoVendaItem
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'DELETE', 'PEDIDOVENDAITEM', CONCAT(CAST(OLD.serie AS CHAR),',',CAST(OLD.pedido_numero AS CHAR)));
END //

DELIMITER ;


-- -----------------------------------------------------
-- Trigger TG_LOG_PV
-- -----------------------------------------------------
DELIMITER //

CREATE TRIGGER TG_LOG_PV_AFTER_INSERT
AFTER INSERT ON PedidoVenda
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'INSERT', 'PEDIDOVENDA', CONCAT(CAST(NEW.serie AS CHAR),',',CAST(NEW.pedido_numero AS CHAR)));
END //

CREATE TRIGGER TG_LOG_PV_AFTER_UPDATE
AFTER UPDATE ON PedidoVenda
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'UPDATE', 'PEDIDOVENDA', CONCAT(CAST(NEW.serie AS CHAR),',',CAST(NEW.pedido_numero AS CHAR)));
END //

CREATE TRIGGER TG_LOG_PV_AFTER_DELETE
AFTER DELETE ON PedidoVenda
FOR EACH ROW
BEGIN
    DECLARE v_usuario VARCHAR(30);
    SELECT USER() INTO v_usuario;
    CALL proc_insere_log(v_usuario, 'DELETE', 'PEDIDOVENDA', CONCAT(CAST(OLD.serie AS CHAR),',',CAST(OLD.pedido_numero AS CHAR)));
END //

DELIMITER ;

--- Para deletar as triggers de uma vez:
SELECT CONCAT('DROP TRIGGER IF EXISTS ', trigger_name, ';') AS drop_trigger_query
FROM information_schema.triggers
WHERE trigger_schema = 'seu_banco_de_dados';

-- pegar o resultado da consulta acima e executar
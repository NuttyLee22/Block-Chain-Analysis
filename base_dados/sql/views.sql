use polimero;

-- 1-Tempo de entrega: Tempo decorrido da saída do armazém até a chegada no cliente em dias
ALTER VIEW tempo_entrega AS
	SELECT
		opr.Nome as Operacao
        ,uso.uso as Uso
		,tpd.nome as Transportadora
        ,grupo.nome as Grupo
        ,mun.municipio as Municipio
        ,uf.uf as UF
        ,pv.emitido_em as 'Emitido em'
        ,pv.previsao_entrega as 'Previsao Entrega'
        ,pv.dt_embarque as 'Data Embarque'
        ,pv.dt_entregue as 'Data Entregue'
        ,CONCAT(CONVERT((pv.dt_entregue-dt_embarque),CHAR)," dia(s)") as tempo_entrega
    FROM
		pedidovenda pv
	LEFT JOIN operacao opr
		ON pv.Operacao_numero = opr.Operacao_numero
	LEFT JOIN uso
		ON pv.Uso_numero = uso.uso_Numero
	LEFT JOIN transportadora tpd 
		ON pv.transportadora_numero = tpd.transportadora_numero
	LEFT JOIN endereco edc
		ON pv.Cod_log_entrega = edc.Cod_log
	LEFT JOIN grupo
		ON tpd.Grupo_numero = grupo.Grupo_numero
	LEFT JOIN municipio mun
		ON edc.Municipio_numero = mun.Municipio_numero
	LEFT JOIN uf 
		ON mun.uf = uf.uf
	Order by pv.emitido_em;
    
-- 2-Tempo de ciclo do pedido: Tempo decorrido desde a  efetivação da compra até a entrega em dias
CREATE VIEW tempo_ciclo_pedido AS
	SELECT
		opr.Nome as Operacao
        ,uso.uso as Uso
		,tpd.nome as Transportadora
        ,grupo.nome as Grupo
        ,mun.municipio as Municipio
        ,uf.uf as UF
        ,pv.emitido_em as 'Emitido em'
        ,pv.previsao_entrega as 'Previsao Entrega'
        ,pv.dt_embarque as 'Data Embarque'
        ,pv.dt_entregue as 'Data Entregue'
        ,CONCAT(CONVERT((pv.dt_entregue-dt_embarque),CHAR)," dia(s)") as 'Ciclo Pedido'
    FROM
		pedidovenda pv
	LEFT JOIN operacao opr
		ON pv.Operacao_numero = opr.Operacao_numero
	LEFT JOIN uso
		ON pv.Uso_numero = uso.uso_Numero
	LEFT JOIN transportadora tpd 
		ON pv.transportadora_numero = tpd.transportadora_numero
	LEFT JOIN endereco edc
		ON pv.Cod_log_entrega = edc.Cod_log
	LEFT JOIN grupo
		ON tpd.Grupo_numero = grupo.Grupo_numero
	LEFT JOIN municipio mun
		ON edc.Municipio_numero = mun.Municipio_numero
	LEFT JOIN uf 
		ON mun.uf = uf.uf
	Order by pv.emitido_em;
    
-- 3-On Time In Full (OTIF - Pedidos Completos e no Prazo): Número de pedidos recebidos pelo cliente no prazo e quantidades acordadas / número total de pedidos, em porcentagem.
CREATE VIEW otif AS
	SELECT
    
    FROM

-- 4-On time delivery (OTD): Número de pedidos entregues ao cliente no prazo acordado / número total de pedidos, em porcentagem.
CREATE VIEW otd AS
	SELECT
    
    FROM

-- 5-Order Fill Rate:  Número de pedidos atendidos completamente / Número total de pedidos, em porcentagem 
CREATE VIEW order_fill_rate AS
	SELECT
    
    FROM
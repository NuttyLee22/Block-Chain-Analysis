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
        ,CONCAT(CONVERT((pv.dt_entregue-pv.dt_embarque),CHAR)," dia(s)") as 'Tempo Entrega'
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
	ORDER BY pv.emitido_em;
    
-- 2-Tempo de ciclo do pedido: Tempo decorrido desde a  efetivação da compra até a entrega em dias
ALTER VIEW tempo_ciclo_pedido AS
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
        ,CONCAT(CONVERT((pv.dt_entregue-pv.emitido_em),CHAR)," dia(s)") as 'Ciclo Pedido'
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
ALTER VIEW otif AS
	SELECT
		clt.cliente as 'Cliente'
		,count(pv.pedido_numero) as 'Pedidos Recebidos'
        ,ROUND((count(pv.pedido_numero)*100)/totalPed.total_pedidos,2) as 'Pedidos Recebidos %'
		,totalPed.total_pedidos as 'Total Pedidos'
    FROM
		pedidovenda pv
	LEFT JOIN cliente clt
		ON pv.cliente_numero = clt.cliente_numero
	LEFT JOIN 
		(SELECT
				clt.cliente_numero as NumeroCliente
				,clt.cliente as Cliente
				,count(pv.pedido_numero) as total_pedidos
			FROM
				pedidovenda pv
			LEFT JOIN cliente clt
				ON pv.cliente_numero = clt.cliente_numero
			LEFT JOIN pedidovendaitem pvi
				ON pv.serie = pvi.serie AND pv.pedido_numero = pvi.pedido_numero
			GROUP BY clt.cliente_numero, clt.cliente) as totalPed 
		ON clt.cliente_numero = totalPed.NumeroCliente
	LEFT JOIN pedidovendaitem pvi
		ON pv.serie = pvi.serie AND pv.pedido_numero = pvi.pedido_numero
	WHERE pv.dt_entregue <= pv.previsao_entrega
		AND pv.OnTime_InFull = 0
	GROUP BY clt.cliente, totalPed.total_pedidos
    ORDER BY clt.cliente;

-- 4-On time delivery (OTD): Número de pedidos entregues ao cliente no prazo acordado / número total de pedidos, em porcentagem.
CREATE VIEW otd AS
	SELECT
		clt.cliente as 'Cliente'
		,count(pv.pedido_numero) as 'Pedidos Recebidos'
        ,ROUND((count(pv.pedido_numero)*100)/totalPed.total_pedidos,2) as 'Pedidos Recebidos %'
		,totalPed.total_pedidos as 'Total Pedidos'
    FROM
		pedidovenda pv
	LEFT JOIN cliente clt
		ON pv.cliente_numero = clt.cliente_numero
	LEFT JOIN 
		(SELECT
				clt.cliente_numero as NumeroCliente
				,clt.cliente as Cliente
				,count(pv.pedido_numero) as total_pedidos
			FROM
				pedidovenda pv
			LEFT JOIN cliente clt
				ON pv.cliente_numero = clt.cliente_numero
			LEFT JOIN pedidovendaitem pvi
				ON pv.serie = pvi.serie AND pv.pedido_numero = pvi.pedido_numero
			GROUP BY clt.cliente_numero, clt.cliente) as totalPed 
		ON clt.cliente_numero = totalPed.NumeroCliente
	LEFT JOIN pedidovendaitem pvi
		ON pv.serie = pvi.serie AND pv.pedido_numero = pvi.pedido_numero
	WHERE pv.dt_entregue <= pv.previsao_entrega
		-- AND pv.OnTime_InFull = 0
	GROUP BY clt.cliente, totalPed.total_pedidos
    ORDER BY clt.cliente;

-- 5-Order Fill Rate:  Número de pedidos atendidos completamente / Número total de pedidos, em porcentagem 
CREATE VIEW order_fill_rate AS
	SELECT
		Cliente
        ,Pedidos_Recebidos
        ,Pedidos_Recebidos_Porc
        ,TotalPedidos
    FROM
		(SELECT
			clt.cliente as 'Cliente'
			,count(pv.pedido_numero) as Pedidos_Recebidos
			,ROUND((count(pv.pedido_numero)*100)/totalPed.total_pedidos,2) as Pedidos_Recebidos_Porc
			,totalPed.total_pedidos as TotalPedidos
		FROM
			pedidovenda pv
		LEFT JOIN cliente clt
			ON pv.cliente_numero = clt.cliente_numero
		LEFT JOIN 
			(SELECT
					clt.cliente_numero as NumeroCliente
					,clt.cliente as Cliente
					,count(pv.pedido_numero) as total_pedidos
				FROM
					pedidovenda pv
				LEFT JOIN cliente clt
					ON pv.cliente_numero = clt.cliente_numero
				LEFT JOIN pedidovendaitem pvi
					ON pv.serie = pvi.serie AND pv.pedido_numero = pvi.pedido_numero
				GROUP BY clt.cliente_numero, clt.cliente) as totalPed 
			ON clt.cliente_numero = totalPed.NumeroCliente
		LEFT JOIN pedidovendaitem pvi
			ON pv.serie = pvi.serie AND pv.pedido_numero = pvi.pedido_numero
		WHERE pv.dt_entregue <= pv.previsao_entrega
			AND pv.OnTime_InFull = 0
		GROUP BY clt.cliente, totalPed.total_pedidos
		ORDER BY clt.cliente) as result
	WHERE
		Pedidos_Recebidos = TotalPedidos;
        
-- Order Fill Rate (OFR): o tempo gasto no processamento interno de um pedido de compra, desde a separação até a expedição.
ALTER VIEW ofr_sep_exp AS 
	SELECT
		opr.Nome as Operacao
        ,uso.uso as Uso
		,tpd.nome as Transportadora
        ,grupo.nome as Grupo
        ,mun.municipio as Municipio
        ,uf.uf as UF
        ,pv.emitido_em as 'Emitido em'
        ,pv.dt_embarque as 'Data Embarque'
        ,CONCAT(CONVERT((pv.dt_entregue-pv.emitido_em),CHAR)," dia(s)") as 'Tempo Processamento'
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
	ORDER BY pv.emitido_em;
    
-- Ticket médio por pedido: valor total das vendas dividido pelo numero de pedidos atendidos
ALTER VIEW ticket_medio_pedido AS
	SELECT
		opr.Nome as Operacao
        ,uso.uso as Uso
		,tpd.nome as Transportadora
        ,grupo.nome as Grupo
        ,mun.municipio as Municipio
        ,uf.uf as UF
        ,CASE MONTH(pv.dt_entregue) 
			WHEN 1 THEN 'Janeiro'
			WHEN 2 THEN 'Fevereiro'
			WHEN 3 THEN 'Março'
			WHEN 4 THEN 'Abril'
			WHEN 5 THEN 'Maio'
			WHEN 6 THEN 'Junho'
			WHEN 7 THEN 'Julho'
			WHEN 8 THEN 'Agosto'
			WHEN 9 THEN 'Setembro'
			WHEN 10 THEN 'Outubro'
			WHEN 11 THEN 'Novembro'
			WHEN 12 THEN 'Dezembro' END as Mes_Entregue
        -- ,pvi.preco_total as 'Valor Total Venda'	
        ,ROUND(SUM(pvi.preco_total/total_ped_atendidos.Pedido),2) as 'Ticket Medio por Pedido'
    FROM
		pedidovenda pv
	LEFT JOIN pedidovendaitem pvi
		ON pv.serie = pvi.serie AND pv.pedido_numero = pvi.pedido_numero
	INNER JOIN
		(SELECT
				pv.pedido_numero as ID
				,count(pv.pedido_numero) as Pedido
			FROM
				pedidovenda pv
			WHERE
				pv.dt_entregue <= pv.previsao_entrega
				AND pv.OnTime_InFull = 0 
			GROUP BY 
				pv.pedido_numero) as total_ped_atendidos
		ON pv.pedido_numero = total_ped_atendidos.ID
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
	GROUP BY
		opr.Nome
        ,uso.uso
		,tpd.nome
        ,grupo.nome
        ,mun.municipio
        ,uf.uf
        ,Mes_Entregue;
	-- ORDER BY MONTH(Mes_Entregue);

use polimero;

select * from log;

-- 1-Tempo de entrega: Tempo decorrido da saída do armazém até a chegada no cliente em dias
ALTER VIEW tempo_entrega AS
	SELECT
		pv.pedido_numero as 'Pedido Numero'
        ,opr.Nome as Operacao
        ,uso.uso as Uso
		,tpd.nome as Transportadora
        ,grupo.nome as Grupo
        ,mun.municipio as Municipio
        ,uf.uf as UF
        ,pv.emitido_em as 'Emitido em'
        ,pv.previsao_entrega as 'Previsao Entrega'
        ,pv.dt_embarque as 'Data Embarque'
        ,pv.dt_entregue as 'Data Entregue'
        ,CONCAT(CONVERT(DATEDIFF(pv.dt_entregue,pv.dt_embarque),CHAR)," dia(s)") as 'Tempo Entrega'
        ,DATEDIFF(pv.dt_entregue,pv.dt_embarque) as 'Dias' -- converter para numero inteiro
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
		pv.pedido_numero as 'Pedido Numero'
        ,opr.Nome as Operacao
        ,uso.uso as Uso
		,tpd.nome as Transportadora
        ,grupo.nome as Grupo
        ,mun.municipio as Municipio
        ,uf.uf as UF
        ,pv.emitido_em as 'Emitido em'
        ,pv.previsao_entrega as 'Previsao Entrega'
        ,pv.dt_embarque as 'Data Embarque'
        ,pv.dt_entregue as 'Data Entregue'
        ,CONCAT(CONVERT(DATEDIFF(pv.dt_entregue,pv.emitido_em),CHAR)," dia(s)") as 'Ciclo Pedido'
        ,DATEDIFF(pv.dt_entregue,pv.emitido_em) as 'Dias'
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
	Where pv.dt_entregue-pv.emitido_em > 10
	Order by pv.emitido_em;
    
-- 3-On Time In Full (OTIF - Pedidos Completos e no Prazo): Número de pedidos recebidos pelo cliente no prazo e quantidades acordadas / número total de pedidos, em porcentagem.
ALTER VIEW otif AS
	SELECT
		pv.pedido_numero as 'Pedido Numero'
        ,clt.cliente as 'Cliente'
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
		AND pv.OnTime_InFull = 1
	GROUP BY pv.pedido_numero, clt.cliente, totalPed.total_pedidos
    ORDER BY clt.cliente;

-- 4-On time delivery (OTD): Número de pedidos entregues ao cliente no prazo acordado / número total de pedidos, em porcentagem.
ALTER VIEW otd AS
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
	GROUP BY clt.cliente, totalPed.total_pedidos
    ORDER BY clt.cliente;
    
    select count(*) from otd;

-- 5-Order Fill Rate:  Número de pedidos atendidos completamente / Número total de pedidos, em porcentagem 
-- CORRECA0 :

ALTER VIEW OrderFillRateView AS
SELECT
    pv.Serie,
    pv.Pedido_numero,
    pv.Cliente_numero,
    clt.Cliente,
    pv.Operacao_numero,
    pv.Uso_numero,
    pv.Transportadora_numero,
    pv.Cod_log_entrega,
	pv.OnTime,
    pv.InFull,
    pv.OnTime_InFull,
    pvi.Serie AS Item_Serie,
    pvi.Pedido_numero AS Item_Pedido_numero,
    pvi.Produto_numero
FROM
    polimero.PedidoVenda pv
JOIN polimero.PedidoVendaItem pvi 
	ON pv.Serie = pvi.Serie AND pv.Pedido_numero = pvi.Pedido_numero
LEFT JOIN cliente clt
	ON pv.cliente_numero = clt.cliente_numero;
    
ALTER VIEW OrderFillRateResult AS
SELECT
    Cliente_numero,
    Cliente,
    COUNT(DISTINCT Pedido_numero) AS Total_Pedidos,
    COUNT(DISTINCT CASE WHEN OnTime_InFull = 1 THEN Pedido_numero END) AS Pedidos_Atendidos_Completamente,
    (COUNT(DISTINCT CASE WHEN OnTime_InFull = 1 THEN Pedido_numero END) / COUNT(DISTINCT Pedido_numero)) * 100 AS Order_Fill_Rate
FROM
    OrderFillRateView
    
GROUP BY
    Cliente_numero, Cliente;

select * from ofr_sep_exp;
        
-- Order Fill Rate (OFR): o tempo gasto no processamento interno de um pedido de compra, desde a separação até a expedição.
ALTER VIEW ofr_sep_exp AS 
	SELECT
		pv.pedido_numero as 'Pedido Numero'
		,opr.Nome as Operacao
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
		pv.pedido_numero as 'Pedido Numero'
        ,opr.Nome as Operacao
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
		,pv.dt_entregue as 'Data Entregue'	
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
		pv.pedido_numero
        ,opr.Nome
        ,uso.uso
		,tpd.nome
        ,grupo.nome
        ,mun.municipio
        ,uf.uf
        ,Mes_Entregue
        ,pv.dt_entregue;
	-- ORDER BY MONTH(Mes_Entregue);

-- Info gerais : Para PowerBI e analises notebook
ALTER VIEW info_gerais AS
	SELECT
		pv.pedido_numero as 'Pedido Numero'
		,cli.cliente as Cliente
		,prd.nome as Produto
        ,opr.Nome as Operacao
        ,uso.uso as Uso
        ,fam.nome as Familia
        ,linha.nome as Linha
        ,pv.ordem_venda as 'Ordem Venda'
		,tpd.nome as Transportadora
        ,pv.transporte as 'Tipo Transporte'
        ,grupo.nome as Grupo
        ,pv.volume as Volume
        ,ROUND(pv.valor_mercadoria,2) as 'Valor Mercadoria (R$)'
        ,ROUND(pv.frete,2) as 'Frete  (R$)'
        ,ROUND(pv.seguro,2) as 'Seguro (R$)'
        ,ROUND(pv.acrescimos,2) as 'Acrescimos (R$)'
        ,ROUND(pv.peso_liquido,2) as 'Peso Liquido (Kg)'
        ,ROUND(pv.peso_bruto,2) as 'Peso Bruto (Kg)'
        ,pv.emitido_em as 'Emitido em'
        ,pv.previsao_entrega as 'Previsao Entrega'
        ,pv.dt_embarque as 'Data Embarque'
        ,pv.dt_entregue as 'Data Entregue'
        ,pv.ontime as 'On Time'
        ,pv.infull as 'In Full'
        ,pv.ontime_infull as 'On Time/In Full'
		,mun.municipio as Municipio
        ,CASE WHEN (uf.uf) = 'SP' THEN 'São Paulo'
			  WHEN (uf.uf) = 'RJ' THEN 'Rio de Janeiro'
              WHEN (uf.uf) = 'MT' THEN 'Mato Grosso'
         END AS UF
        ,uf.regiao as Regiao
        ,'BR' as Pais
    FROM
		pedidovenda pv
	LEFT JOIN cliente cli
		ON pv.cliente_numero = cli.cliente_numero
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
	LEFT JOIN pedidovendaitem pvi
		ON pv.serie = pvi.serie AND pv.pedido_numero = pvi.pedido_numero
	LEFT JOIN produto prd
		ON pvi.produto_numero = prd.produto_numero
	LEFT JOIN familia fam
		ON prd.familia_numero = fam.familia_numero
	LEFT JOIN linha
		ON prd.linha_numero = linha.linha_numero
	Order by cli.cliente,pv.emitido_em;
    
describe pedidovendaitem;

-- VIEW GERAL KPIS

-- Criar uma view que une os resultados de todas as outras views

ALTER VIEW KPIs AS
SELECT
    -- Campos da view tempo_entrega
    te.`Pedido Numero`,
    te.Operacao,
    te.Uso,
    te.Transportadora,
    te.Grupo,
    te.Municipio,
    te.UF,
    te.`Emitido em`,
    te.`Previsao Entrega`,
    te.`Data Embarque`,
    te.`Data Entregue`,
    te.`Tempo Entrega`,
    te.Dias AS `Tempo Entrega Dias`,

    -- Campos da view tempo_ciclo_pedido
    tcp.`Ciclo Pedido`,
    tcp.Dias AS `Ciclo Pedido Dias`,

    -- Campos da view otif
    o.Cliente,
    o.`Pedidos Recebidos` AS `Pedidos Recebidos OTIF`,
    o.`Pedidos Recebidos %` AS `Pedidos Recebidos % OTIF`,
	o.`Total Pedidos` AS `Total Pedidos OTIF`,

    -- Campos da view otd
    ot.`Pedidos Recebidos` AS `Pedidos Recebidos OTD`,
    ot.`Pedidos Recebidos %` AS `Pedidos Recebidos % OTD`,
    ot.`Total Pedidos` AS `Total Pedidos OTD`,

    -- Campos da view OrderFillRateResult
    ofr.`Total_Pedidos` AS `Total Pedidos OFR`,
    ofr.`Pedidos_Atendidos_Completamente` AS `Pedidos Atendidos Completamente OFR`,
    ofr.`Order_Fill_Rate` AS `Order Fill Rate OFR`

FROM
    tempo_entrega te
JOIN tempo_ciclo_pedido tcp 
	ON te.`Pedido Numero` = tcp.`Pedido Numero`
JOIN otif o 
	ON te.`Pedido Numero` = o.`Pedido Numero`
JOIN otd ot 
	ON o.Cliente = ot.Cliente
JOIN OrderFillRateResult ofr 
	ON o.Cliente = ofr.Cliente
JOIN ofr_sep_exp ofrse 
	ON te.`Pedido Numero` = ofrse.`Pedido Numero`;

select count(*) from kpis;
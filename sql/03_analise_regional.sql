CREATE OR REPLACE TABLE `prefab-fabric-462023-n0.estudos_sql.vendas_analiticas_regiao` AS
SELECT 
  regiao_limpa AS regiao,
  SUM(quantidade * preco_unit) AS faturamento_total,
  COUNT(DISTINCT pedido_id) AS pedidos_total,
  ROUND(
    SAFE_DIVIDE(
      SUM(quantidade * preco_unit),
      COUNT(DISTINCT pedido_id)
    ), 2
  ) AS ticket_medio
FROM `prefab-fabric-462023-n0.estudos_sql.vendas_tratadas`
GROUP BY regiao;
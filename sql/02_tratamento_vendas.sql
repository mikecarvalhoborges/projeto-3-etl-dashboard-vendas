CREATE OR REPLACE TABLE `prefab-fabric-462023-n0.estudos_sql.vendas_tratadas` AS
SELECT 
  pedido_id,
  data_pedido,
  cliente,
  produto,
  quantidade,
  preco_unit,
  UPPER(TRIM(regiao)) AS regiao_limpa
FROM `prefab-fabric-462023-n0.estudos_sql.vendas_brutas`
WHERE quantidade IS NOT NULL
  AND preco_unit > 0
  AND cliente IS NOT NULL
  AND produto IS NOT NULL;
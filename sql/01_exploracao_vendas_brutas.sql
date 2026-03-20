SELECT 
  COUNTIF(cliente IS NULL) AS clientes_nulos,
  COUNTIF(produto IS NULL) AS produto_nulos,
  COUNTIF(quantidade IS NULL) AS quantidade_nulos,
  COUNTIF(preco_unit IS NULL) AS preco_unit_nulos,
  COUNTIF(regiao IS NULL) AS regiao_nulos
FROM `prefab-fabric-462023-n0.estudos_sql.vendas_brutas`;

SELECT DISTINCT
  regiao
FROM `prefab-fabric-462023-n0.estudos_sql.vendas_brutas`;

SELECT 
  COUNTIF(preco_unit = 0) AS precos_zerados
FROM `prefab-fabric-462023-n0.estudos_sql.vendas_brutas`;
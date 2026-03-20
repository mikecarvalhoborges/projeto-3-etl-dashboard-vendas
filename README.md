# Projeto 3 - ETL e Dashboard de Vendas por Região

## Objetivo
Realizar um processo simples de ETL em dados de vendas no BigQuery, gerar uma tabela analítica por região e construir um dashboard no Power BI para análise de faturamento, pedidos e ticket médio.

## Ferramentas utilizadas
- Google BigQuery
- SQL
- Power BI
- GitHub

## Etapas do projeto

### 1. Exploração dos dados brutos
Foi realizada uma análise inicial da tabela `vendas_brutas` para identificar:
- valores nulos
- preços zerados
- inconsistências na coluna de região

### 2. Tratamento dos dados (ETL)
Foi criada uma tabela tratada com:
- remoção de registros com campos críticos nulos
- exclusão de preços unitários zerados
- padronização da coluna de região com `UPPER(TRIM(regiao))`

### 3. Criação da tabela analítica
A partir da base tratada, foi criada uma tabela agregada por região contendo:
- faturamento total
- total de pedidos
- ticket médio

### 4. Construção do dashboard
No Power BI, foi desenvolvido um dashboard com:
- KPIs de faturamento total, pedidos totais e ticket médio
- gráficos de faturamento, pedidos e ticket médio por região
- participação percentual no faturamento
- mapa de distribuição regional
- filtro por região

## Estrutura do projeto

```text
projeto-3-etl-dashboard-vendas/
├── README.md
├── sql/
│   ├── 01_exploracao_vendas_brutas.sql
│   ├── 02_tratamento_vendas.sql
│   └── 03_analise_regional.sql
├── dashboard/
│   └── dashboard_projeto3.pbix
└── images/
    └── dashboard.png

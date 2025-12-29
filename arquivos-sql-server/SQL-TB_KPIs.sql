
USE BI_SellInSellOut

--============================================================================================
--=======================	CRIANDO TABLEA DIMENSÃO DA TABELA FATO TB_KPIs	=======================


--DIM_KPIs_PRODUTO
SELECT	*
FROM	TB_KPIs;

SELECT DISTINCT PRODUTO
FROM			TB_KPIs;

CREATE TABLE DIM_KPIs_PRODUTO (
	ID_PRODUTO	INT IDENTITY(1,1)	PRIMARY KEY,
	PRODUTO		NVARCHAR(100),
	SKU			NVARCHAR(50)	
);
INSERT INTO		DIM_KPIs_PRODUTO
SELECT DISTINCT PRODUTO, SKU
FROM			TB_KPIs;

SELECT	*
FROM	DIM_KPIs_PRODUTO;

--JOIN DIM_KPIs_PRODUTO
SELECT
    p.ID_PRODUTO,
    p.PRODUTO,
    p.SKU,
    f.Estoque_Inicial,
    f.Entradas,
    f.Saídas,
    f.Estoque_Final
FROM    TB_KPIs f
JOIN    DIM_KPIs_PRODUTO p
ON      f.PRODUTO = p.PRODUTO
AND     f.SKU = p.SKU;


--CRIANDO VIEWS COM JOINS
GO
CREATE VIEW VW_KPIs AS
SELECT 
    p.PRODUTO,
    p.SKU,
    dt.ANO,
    dt.NOME_MES,
    dt.DIA_SEMANA,
    dt.DIA,
    f.ESTOQUE_INICIAL,
    f.ENTRADAS,
    f.SAÍDAS,
    f.ESTOQUE_FINAL
FROM    TB_KPIs f
JOIN    DIM_KPIs_PRODUTO p
ON      f.PRODUTO = p.PRODUTO
JOIN    DIM_DATAS dt
ON      f.DATA = dt.DATA;

SELECT  *
FROM    VW_KPIs;





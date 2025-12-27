# BI-SellInSellOut

Modelagem dimensional e scripts SQL para construção de um Data Warehouse focado em análises **Sell-In** e **Sell-Out**.  
O projeto está **em andamento** e tem como objetivo estruturar um modelo estrela para suportar dashboards em Power BI e outras ferramentas de BI.

---

## 📌 Objetivos do Projeto
- Criar um banco de dados relacional para análises de vendas (Sell-In / Sell-Out).
- Estruturar tabelas **fato** e **dimensão** seguindo boas práticas de modelagem dimensional.
- Permitir consultas analíticas com joins entre fatos e dimensões.
- Servir como base para dashboards interativos em Power BI.

---

## 📂 Estrutura Atual
- **Tabelas Fato**
  - `TB_VENDAS`
  - `TB_CATEGORIA`
  - `TB_KPIs`

- **Tabelas Dimensão**
  - `DIM_PRODUTOS`
  - `DIM_DISTRIBUIDOR`
  - `DIM_REGIAO`
  - `DIM_DATAS`
  - *(em construção: `DIM_CATEGORIA`, `DIM_KPI`)*

---

## 🚧 Status
O projeto está em desenvolvimento.  
Atualmente já foram criadas as dimensões principais (`PRODUTOS`, `DISTRIBUIDOR`, `REGIAO`, `DATAS`) e realizados testes de **JOIN** com a tabela de fatos `TB_VENDAS`.

Próximos passos:
- Criar dimensões para `TB_CATEGORIA` e `TB_KPIs`.
- Documentar consultas agregadas (ex.: vendas por ano, região, distribuidor).
- Montar diagrama visual do modelo estrela.

---

## ▶️ Como usar
1. Clone este repositório:
   ```bash
   git clone https://github.com/seuusuario/BI-SellInSellOut.git

   
---

                           

# 📊 Superstore Sales Analysis | MySQL, Excel & Power BI

End-to-end sales analysis of the Superstore dataset (2014–2017), performed across three tools — **MySQL** for data querying, **Excel** for dashboarding, and **Power BI** for interactive visualization — to uncover revenue trends, profitability drivers, and loss patterns.

---

## 🧰 Tools Used

| Tool | Purpose |
|------|---------|
| **MySQL** | Data extraction, aggregation, window functions (RANK, DENSE_RANK) |
| **Excel** | Pivot tables, KPI dashboard, charts, slicers |
| **Power BI** | Interactive dashboard, DAX measures, YoY analysis, geo-mapping |

---

## 📌 Key Business Insights & Recommendations

- **West region** contributes the highest revenue (₹7.13L), while **South** lags behind — consider targeted marketing campaigns to boost sales in underperforming regions.
- **Furniture** category has the lowest profit margin (**2.32%**) despite solid sales — recommend reviewing furniture pricing/discount strategy or renegotiating supplier costs.
- Orders with **70–80% discount** result in the steepest losses — recommend capping maximum discount thresholds, especially for Technology and Office Supplies products.
- **Q4 (Sep–Dec)** shows peak sales every year — inventory and staffing should be scaled up ahead of this period to avoid stockouts.
- **Technology** category has the highest profit margin (17.39%) — a strong candidate for increased promotional focus.

---

## 📈 Power BI Dashboard

DAX measures built: `Total Sales`, `Total Profit`, `Total Orders`, `Average Order Value (AOV)`, `Profit Margin %`, and `YoY Growth` (using `SAMEPERIODLASTYEAR`).

![Power BI Dashboard](Screenshots/superstore.png)

📁 File: [`PowerBI/Superstore_Dashboard.pbix`](PowerBI/Superstore_Dashboard.pbix)

---

## 📊 Excel Dashboard

Built using Pivot Tables, Pivot Charts, and Slicers for interactive filtering by region and category.

![Excel Dashboard](Screenshots/excel_dashboard.png)

📁 File: [`Excel/Superstore_Dashboard.xlsx`](Excel/Superstore_Dashboard.xlsx)

---

## 🗄️ MySQL Analysis

Queries covering monthly trends, category-wise profitability, regional ranking (window functions), customer segment analysis, and loss-making order detection.

**Monthly Revenue Trend**
![Monthly Trend](Screenshots/mysql_monthly_trend.png)

**Category-wise Profit Margin**
![Category Profit Margin](Screenshots/mysql_category_profit_margin.png)

**Regional Sales Ranking (Window Function - RANK)**
![Region Ranking](Screenshots/mysql_region_ranking_window_function.png)

**Customer Segment Analysis (DENSE_RANK + CASE)**
![Segment Analysis](Screenshots/mysql_segment_analysis_dense_rank.png)

**Top Loss-Making Orders**
![Loss Making Orders](Screenshots/mysql_loss_making_orders.png)

📁 File: [`MySQL/superstore_queries.sql`](MySQL/superstore_queries.sql)

---

## 📂 Project Structure
Superstore-Sales-Analysis/
│
├── README.md
├── MySQL/
│   └── superstore_queries.sql
├── Excel/
│   └── Superstore_Dashboard.xlsx
├── PowerBI/
│   └── Superstore_Dashboard.pbix
└── Screenshots/
├── powerbi_dashboard.png
├── excel_dashboard.png
├── mysql_monthly_trend.png
├── mysql_category_profit_margin.png
├── mysql_region_ranking_window_function.png
├── mysql_segment_analysis_dense_rank.png
└── mysql_loss_making_orders.png 

---

## 🔗 Connect

- **GitHub:** [github.com/swatidwivedi-236](https://github.com/swatidwivedi-236)
- **LinkedIn:** [linkedin.com/in/swati-dwivedi236](https://linkedin.com/in/swati-dwivedi236)

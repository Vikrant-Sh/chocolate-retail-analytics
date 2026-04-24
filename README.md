# 🍫 Chocolate Retail Analytics

![Python](https://img.shields.io/badge/Python-3.11-blue?logo=python&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-8.0-orange?logo=mysql&logoColor=white)
![PowerBI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow?logo=powerbi&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

An end-to-end retail analytics project analyzing **1 million+ transactions** across **100 stores**, **200 products**, and **50,000 customers** — built using Python, MySQL, and Power BI.

---

## 📌 Project Overview

This project simulates a real-world business analytics pipeline for a chocolate retail chain. Starting from raw CSV data, the project covers data cleaning and feature engineering in Python, relational database design and querying in MySQL, and an interactive multi-page dashboard in Power BI.

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| Python (Pandas, NumPy) | Data cleaning, feature engineering, pipeline automation |
| MySQL | Relational database design, business SQL queries |
| Power BI | Interactive dashboard and data visualization |
| SQLAlchemy | Python to MySQL connection |
| GitHub | Version control and portfolio hosting |

---

## 📁 Project Structure

```
chocolate-retail-analytics/
│
├── data/                        # Raw and cleaned datasets
│   ├── raw/                     # Original CSV files
│   └── clean/                   # Cleaned and enriched CSV files
│
├── images/                      # Dashboard screenshots
│   ├── CRA-1.png                # Home page
│   ├── CRA-2.png                # Sales overview
│   ├── CRA-3.png                # Store performance
│   ├── CRA-4.png                # Product analytics
│   └── CRA-5.png                # Customer insights
│
├── chocolate_analysis.py        # Python data cleaning and pipeline script
├── queries.sql                  # MySQL analytical queries
└── README.md                    # Project documentation
```

---

## 📂 Dataset

The full dataset including raw and cleaned CSV files and the Power BI `.pbix` file are available on Google Drive:

🔗 [Download Dataset + Power BI File](https://drive.google.com/drive/folders/1eqndxbRYOyypO8_9QWdONRU5XV4JK7Y-?usp=sharing)

| File | Description | Rows |
|------|-------------|------|
| sales.csv | Transaction level sales data | ~1,000,000 |
| customers.csv | Customer demographics and loyalty info | 50,000 |
| products.csv | Product details, brand, category, cocoa % | 200 |
| stores.csv | Store location, city, country, type | 100 |
| calendar.csv | Date dimension table | — |

---

## ⚙️ Phase 1 — Python: Data Cleaning & Feature Engineering

**Script:** `Chocolate_Sales.ipynb`

**What the script does:**
- Loads all 5 raw CSV files into Pandas DataFrames
- Inspects shape, data types, null values and duplicates
- Converts date columns to proper datetime format
- Removes duplicate rows and bad product IDs
- Engineers new columns for analysis:
  - `profit_margin_pct` — profit as % of revenue
  - `discount_flag` — Yes/No using `np.where()`
  - `month_name`, `quarter` — extracted from order date
  - `is_weekend` — weekend transaction flag
  - `age_group` — customer age bins using `pd.cut()`
- Loads all cleaned tables directly into MySQL using SQLAlchemy

---

## 🗄️ Phase 2 — MySQL: Database & Business Queries

**Script:** `Chocolate_sales.sql`

**6 analytical queries written:**

| # | Query | Business question answered |
|---|-------|---------------------------|
| 1 | Overall KPIs | What are total revenue, profit, orders and avg order value? |
| 2 | Monthly revenue trend | How does revenue trend month over month? |
| 3 | Top 10 products | Which products drive the most revenue? |
| 4 | Store performance by country | Which countries and store types perform best? |
| 5 | Loyalty vs non-loyalty | Do loyalty members spend more? |
| 6 | Discount impact | Do discounts hurt profit margins? |

---

## 📊 Phase 3 — Power BI: Interactive Dashboard

**File:** Available in the [Google Drive link](https://drive.google.com/drive/folders/1eqndxbRYOyypO8_9QWdONRU5XV4JK7Y-?usp=sharing)

The dashboard has **5 pages** with interactive slicers and page navigation buttons.

---

### 🏠 Home Page
![Home](Images/CRA-1.png)

---

### 📈 Sales Overview
![Sales Overview](Images/CRA-2.png)

---

### 🏪 Store Performance
![Store Performance](Images/CRA-3.png)

---

### 🍫 Product Analytics
![Product Analytics](Images/CRA-4.png)

---

### 👥 Customer Insights
![Customer Insights](Images/CRA-5.png)

---

## 💡 Key Insights

- **Q4 drives the highest revenue** across all years — seasonal demand peaks in Q4
- **Loyalty members spend 40% more** per order compared to non-loyalty customers
- **Discounted orders have ~45% lower profit margins** — discounting strategy needs review
- **Retail stores outperform mall stores** on revenue per store metric
- **Age group 36–45 contributes the highest revenue** across all customer segments
- **Top 10 products account for a disproportionate share** of total revenue — classic 80/20 pattern

---

## 🚀 How to Run This Project Locally

1. Clone the repository:
```bash
git clone https://github.com/vikrantshandil/chocolate-retail-analytics.git
```

2. Install required Python libraries:
```bash
pip install pandas numpy sqlalchemy pymysql
```

3. Download the dataset from [Google Drive](https://drive.google.com/drive/folders/1eqndxbRYOyypO8_9QWdONRU5XV4JK7Y-?usp=sharing) and place raw CSVs in `data/raw/`

4. Create MySQL database:
```sql
CREATE DATABASE chocolate_sales;
```

5. Update the connection string in `Chocolate_sales.ipnyb`:
```python
engine = create_engine('mysql+pymysql://root:yourpassword@localhost/chocolate_sales')
```

6. Run the Python script:
```bash
python Chocolate_Sales.ipynb
```

7. Open `Chocolate_sales.sql` in MySQL Workbench and run the queries

8. Open the `.pbix` file in Power BI Desktop and refresh the data connection

---

## 👤 Author

**Vikrant Shandil**
Business Analyst | Python · SQL · Power BI

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?logo=linkedin)](https://linkedin.com/in/vikrantshandil)

---

## 📄 License

This project is open source and available for portfolio and educational purposes.

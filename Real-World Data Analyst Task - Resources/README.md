# Real-World Data Analyst Task: Cafe Sales Data Cleaning

This folder contains the raw data, cleaned datasets, and SQL scripts used in my "Real-World Data Analyst Task" YouTube video.

## 🎯 The Business Prompt

A cafe manager provided a dataset of 100 transactions and asked two questions:
1. **Which item is our best-seller by quantity?**
2. **Which payment method generates the most revenue?**

The challenge: The raw data was completely messy. It contained `ERROR` values, missing quantities, missing prices, and blank cells.

## 📂 Folder Contents

- **`raw_cafe_sales.csv`** — The original, messy dataset downloaded for the project.
- **`clean_cafe_sales.csv`** — The cleaned dataset ready for SQL analysis. 
- **`cafe_analysis.sql`** — The SQL queries used to answer the manager's business questions.

## 🛠️ Skills Demonstrated

- **Excel Data Cleaning:** Using `IFERROR`, handling missing values, and replacing blanks with defaults.
- **Data Validation:** Fixing inconsistent formatting (e.g., cleaning out `UNKNOWN` and `ERROR` strings).
- **CSV to SQL:** Importing structured data into a relational database (MySQL).
- **SQL Aggregation:** Using `GROUP BY` and `SUM()` to generate business insights.

## 🎥 Watch the Video

Watch the full process of cleaning this data and writing the SQL on YouTube:
[Real-World Data Analyst Task: Cleaning Messy Data & SQL Analysis](https://youtu.be/VOsUuVqgdlo)

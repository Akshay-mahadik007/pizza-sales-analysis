# Pizza Sales Analysis | SQL & Power BI

An end-to-end data analysis project using pizza sales data. The project covers importing and preparing the data, analysing sales with SQL, and building an interactive Power BI report to explore sales performance.

## Project Overview

The dataset contains **48,620 records** and **12 columns**, including order details, pizza names, quantities, prices, sizes, categories, ingredients, and order date/time.

The analysis focuses on:
- Key performance indicators (KPIs)
- Daily and monthly order trends
- Sales contribution by pizza category and size
- Pizza quantity sold by category
- Best- and worst-performing pizzas by revenue, quantity, and number of orders

## Tools Used

- **MySQL** – database creation, data preparation, and SQL analysis
- **Microsoft Power BI** – data transformation and dashboard/report creation
- **CSV** – source dataset
- **Microsoft Word** – SQL query report/documentation

## Repository Structure

```text
pizza-sales-analysis/
│
├── data/
│   └── pizza_saless.csv
│
├── sql/
│   └── pizza sales sql.sql
│
├── documentation/
│   └── PIZZA SALES SQL QUARIES.docx
│
├── power-bi/
│   └── pizza_db.m.pbix
│
├── screenshots/
│   ├── dashboard-overview.png
│   ├── dashboard-best-worst-sellers.png
│   ├── sql-kpi-results.png
│   └── sql-analysis-results.png
│
└── README.md
```

> The folder and screenshot names above are suggested. Arrange or rename your uploaded files to match this structure before pushing the project to GitHub. Keep the CSV in the repository only if its size and any data-sharing terms allow it.

## Project Workflow

1. **Data import:** Used the CSV source file containing pizza sales records.
2. **SQL database setup:** Created the `pizza_db` database and worked with the `pizza_sales` table.
3. **Data preparation in SQL:** Reviewed the table columns, adjusted selected column data types, converted the `order_date` values into a date format, and changed the date and time columns to `DATE` and `TIME`.
4. **SQL analysis:** Wrote queries to calculate KPIs, examine order trends, compare categories and sizes, and identify top- and bottom-performing pizzas.
5. **Power BI data transformation:** Imported the data into Power BI and performed data transformation in Power Query.
6. **Dashboard creation:** Built a Power BI report to present sales performance and best/worst seller analysis.

## SQL Analysis

The SQL work includes the following analyses:

| Area | Analysis |
|---|---|
| KPIs | Total revenue, average order value, total pizzas sold, total orders, and average pizzas per order |
| Daily trend | Total orders by day of the week |
| Monthly trend | Total orders by month |
| Category analysis | Revenue and percentage of sales by pizza category |
| Size analysis | Sales and percentage contribution by pizza size |
| Category quantity | Total pizzas sold by category |
| Best sellers | Top 5 pizzas by revenue, quantity, and number of orders |
| Worst sellers | Bottom 5 pizzas by revenue, quantity, and number of orders |

The detailed query documentation is included in `documentation/PIZZA SALES SQL QUARIES.docx`. The executable SQL script is included in `sql/pizza sales sql.sql`.

## Power BI Report

The uploaded Power BI file contains report pages named **Home** and **Best/Worst Sellers**. The report includes a 2015 date range and analysis areas such as busiest days and times, sales performance, and best/worst sellers.

Open the `.pbix` file using Microsoft Power BI Desktop to explore the report and interact with its filters and visuals.

### Dashboard Screenshots

Add your screenshots to the `screenshots/` folder, then replace the example image links below with the exact filenames you use.

**Dashboard overview**

![Pizza sales dashboard overview](screenshots/dashboard-overview.png)

**Best and worst sellers**

![Pizza best and worst sellers report](screenshots/dashboard-best-worst-sellers.png)

### SQL  Quary Screenshots

![SQL Quary screenshort](screenshots/sql-quary-screenshots.png)

## How to Run the Project

### 1. Run the SQL script

1. Open MySQL Workbench or another compatible MySQL client.
2. Import `data/pizza_saless.csv` into a table named `pizza_sales` in the `pizza_db` database.
3. Open and execute `sql/pizza sales sql.sql`.
4. Refer to the Word document in `documentation/` for the full set of analysis queries.

### 2. Open the Power BI report

1. Install or open Microsoft Power BI Desktop.
2. Open `power-bi/pizza_db.m.pbix`.
3. If Power BI asks for the data source, update the source path to the CSV or database location on your computer.
4. Refresh the data if required.

## Files Included

- **CSV source file:** Original pizza sales dataset used for the analysis.
- **SQL script:** Database setup, data preparation, and selected analysis queries.
- **SQL query report:** Word document containing the documented KPI and sales analysis queries.
- **Power BI report:** `.pbix` file containing the report and visual analysis.
- **Screenshots:** Images of the dashboard and SQL query outputs (add these to the `screenshots/` folder).

## Notes

- The SQL script and the Word query report contain overlapping but not identical query sets. Refer to both for the complete project work.
- Update file paths in Power BI when opening the report on another computer.
- Do not commit passwords, database credentials, or other private information to GitHub.

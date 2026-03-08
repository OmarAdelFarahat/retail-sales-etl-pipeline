# Retail Sales ETL Pipeline (Python + SQL Server)

This project demonstrates a simple **end-to-end ETL pipeline** using **Python, Pandas, and SQL Server**.

The pipeline extracts retail transaction data from a CSV dataset, performs **exploratory data analysis, data cleaning, and transformations**, then loads the processed data into a **SQL Server data warehouse designed with a star schema**.

The warehouse includes **dimension tables, a fact table, indexes for performance optimization, and reporting views** designed for Business Intelligence tools such as Power BI.

---

# Project Architecture

```mermaid
flowchart TD

A[CSV Dataset] --> B[Python ETL Pipeline]

B --> C[Exploratory Data Analysis]
B --> D[Data Cleaning]
B --> E[Data Transformation]

E --> F[Dimension Tables]

F --> G[Fact Table]

G --> H[SQL Server Data Warehouse]

H --> I[Index Optimization]
H --> J[Reporting Views]

J --> K[Power BI / BI Tools]
```markdown
---

# Dataset

The project uses the **Supermarket Sales dataset**, which contains transactional retail data including:

- Customer information
- Product categories
- Store locations
- Payment methods
- Sales metrics

Each row represents a **single sales transaction**.

Dataset source:

https://www.kaggle.com/datasets/aungpyaeap/supermarket-sales

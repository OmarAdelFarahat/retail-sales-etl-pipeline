# Retail Sales ETL Pipeline

This project demonstrates a simple end-to-end ETL pipeline using Python and SQL Server.

## Architecture

CSV Dataset
     ↓
Python ETL (Pandas)
     ↓
SQL Server Data Warehouse
     ↓
Reporting Views
     ↓
Power BI Ready

## Technologies

- Python
- Pandas
- pyodbc
- SQL Server
- Data Warehousing
- Star Schema

## Data Warehouse Model

DimCustomer  
DimStore  
DimProduct  
DimPayment  
DimDate  
↓  
FactSales

## Features

- Exploratory data analysis
- Data cleaning and transformation
- Star schema modeling
- Incremental ETL loading
- SQL indexing
- BI-ready reporting views

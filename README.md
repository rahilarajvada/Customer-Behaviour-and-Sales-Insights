# Customer-Behaviour-and-Sales-Insights
The goal of this project is to analyze customer behavior and sales trends using SQL and Power BI. The insights help identify high-value customers, purchasing patterns, and marketing opportunities, supporting data-driven decision-making.


## 🎯 Project Objective

The goal of this project was to transform raw transactional data into actionable customer and sales insights.

The analysis focuses on:

* Identifying high-value customers
* Measuring repeat purchase behavior
* Comparing new and repeat customer performance
* Tracking customer acquisition
* Analyzing revenue trends
* Understanding geographic sales performance
* Segmenting customers using RFM analysis

## 🛠️ Tools & Technologies

* **SQL Server** — Data cleaning, transformation and analysis
* **Power BI** — Data modeling, visualization and dashboard development
* **DAX** — KPI and customer-behavior measures
* **Power Query** — Data preparation and transformation

## 📂 Dataset

The project uses the **Online Retail II** e-commerce transactional dataset.

Key fields include:

`InvoiceNo` • `CustomerID` • `InvoiceDate` • `Country` • `Description` • `Quantity` • `UnitPrice`

## 🔄 Analysis Workflow

**Raw Data → SQL Cleaning & Transformation → Customer Analysis → RFM Segmentation → Power BI Data Model → DAX Measures → Interactive Dashboard → Business Insights**

## 📈 Key KPIs

* Total Revenue
* Total Orders
* Unique Customers
* Average Order Value
* Repeat Purchase Rate
* New vs. Repeat Customer Revenue
* Customer Acquisition
* Customer Retention

## 👥 RFM Customer Segmentation

Customers were analyzed using:

* **Recency** — How recently they purchased
* **Frequency** — How frequently they purchased
* **Monetary Value** — How much revenue they generated

This provides a customer-level view of purchasing behavior and helps identify valuable, loyal, and potentially at-risk customers.

## 📊 Dashboard

### Executive Overview

![Executive Dashboard](images/dashboard-overview.png)

### Customer Analysis

![Customer Analysis](images/customer-analysis.png)

## 🔍 SQL Analysis

SQL was used to:

* Clean invalid transactional records
* Calculate transaction revenue
* Calculate customer Recency, Frequency and Monetary values
* Analyze monthly revenue
* Rank top customers
* Analyze geographic performance
* Identify first and repeat purchases

The complete SQL analysis is available in the [`sql`](sql/) folder.

## 💡 Key Insights

1. Repeat customers contribute significantly to total revenue (around 85%).
2. UK is the dominant market (83% revenue), followed by Germany and France
3. Seasonal sales peaks around November–December.
4. Retention rate of customers is around 72% (repeat customers).
5. Customer Acquisition is seen to be declining over a period of time. Marketing team should focus on
launching some customer acquisition campaigns.


## 💼 Business Applications

The analysis can help a business:

* Target high-value customers
* Design customer loyalty campaigns
* Re-engage inactive customers
* Improve customer retention
* Identify important geographic markets
* Monitor customer acquisition and sales trends

## 📁 Repository Structure

```text
customer-behavior-sales-insights/
│
├── README.md
├── dashboard/
│   └── Customer_Behavior_Dashboard.pbix
├── sql/
│   └── customer_analysis.sql
├── documentation/
│   └── Customer_Behavior_Case_Study.pdf
├── images/
│   ├── dashboard-overview.png
│   └── customer-analysis.png
└── dataset/
    └── README.md
```

## 📌 Project Highlights

This project demonstrates:

**SQL Data Analysis • Data Cleaning • RFM Segmentation • Customer Analytics • DAX • Data Modeling • Power BI • Data Visualization • Business Intelligence**


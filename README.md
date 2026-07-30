# 📊 Telecom Customer Churn Analysis

## 📌 Project Overview

This project analyzes customer behavior using a telecom customer churn dataset. The objective is to identify the factors influencing customer churn, understand customer usage patterns, and provide actionable business insights that help improve customer retention and support data-driven decision-making.

The project follows a complete data analytics workflow, including data exploration and cleaning with **Python**, business-oriented analysis using **PostgreSQL**, and interactive dashboard development with **Power BI**.

---

## 🎯 Project Objectives

- Analyze customer behavior and churn patterns.
- Identify the most used telecommunication services.
- Evaluate customer retention across different states.
- Analyze customer service interactions.
- Measure customer revenue.
- Develop an interactive dashboard for business decision-making.

---

## 📂 Dataset Summary

- **Rows:** 3,333
- **Columns:** 20

### Features

### Customer Information

- State
- Account Length
- Area Code

### Service Plans

- International Plan
- Voice Mail Plan
- Number of Voice Mail Messages

### Telecommunication Usage

- Total Day Minutes
- Total Day Calls
- Total Day Charge
- Total Evening Minutes
- Total Evening Calls
- Total Evening Charge
- Total Night Minutes
- Total Night Calls
- Total Night Charge
- Total International Minutes
- Total International Calls
- Total International Charge

### Customer Support

- Customer Service Calls

### Target Variable

- Churn (True = Customer Left, False = Customer Retained)

---

# 🛠️ Technologies Used

- **Python**
  - Pandas
  - NumPy
  - Matplotlib
- **PostgreSQL**
- **Power BI**
- **Git & GitHub**

---

# 📊 Exploratory Data Analysis (Python)

The dataset was explored and prepared using Python.

The analysis included:

- Data loading
- Data exploration
- Missing value verification
- Duplicate checking
- Data type inspection
- Descriptive statistics
- Feature understanding

---

# 💻 Business-Oriented SQL Analysis

The following business questions were answered using PostgreSQL.

### 1. Which telecommunication services are used the most by customers?

### 2. How many customers churned and how many remained?

### 3. What is the customer distribution by state?

### 4. What is the average number of customer service calls?

### 5. Which service plan is the most popular?

### 6. What is the average revenue generated per customer?

### 7. Do churned customers exhibit different usage behavior compared to retained customers?

### 8. What is the impact of account length on customer churn?

### 9. Which states generate the highest revenue while presenting a high churn risk?

---

# 📈 Power BI Dashboard

The interactive dashboard includes:

### Key Performance Indicators (KPIs)

- Total Customers
- Retained Customers
- Churned Customers
- Churn Rate
- Average Revenue per Customer
- Average Customer Service Calls

### Visualizations

- Customer Churn Distribution
- Customer Distribution by State
- Average Call Usage by Time Period
- Service Plan Distribution
- Average Revenue by State
- Customer Service Call Distribution

### Interactive Filters

- State
- Customer Status
- International Plan
- Voice Mail Plan

---

# 💡 Key Insights

- Most customers remain with the company.
- Evening calls are the most frequently used telecommunication service.
- International calls are the least utilized.
- Voice Mail Plan subscriptions are more common than International Plan subscriptions.
- Customer distribution varies across different states.
- The average revenue generated per customer is approximately **60**.
- Customer service interactions provide valuable indicators of customer behavior.

---

# 🚀 Business Recommendations

- Improve customer retention strategies.
- Enhance customer support quality.
- Promote underutilized services.
- Focus retention efforts on high-risk states.
- Monitor customer behavior continuously using business intelligence dashboards.

---

# 📷 Dashboard Preview

> *(Insert your Power BI dashboard screenshot here.)*

```
images/dashboard.png
```

---

# 📁 Project Structure

```
Telecom-Customer-Churn-Analysis/
│
├── data/
│   └── telecom_churn.csv
│
├── notebooks/
│   └── Telecom_Churn_EDA.ipynb
│
├── sql/
│   └── telecom_churn_queries.sql
│
├── dashboard/
│   └── Telecom_Customer_Churn.pbix
│
├── images/
│   └── dashboard.png
│
├── report/
│   └── Telecom_Customer_Churn_Report.pdf
│
├── README.md
└── requirements.txt
```

---

# 📌 Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis (EDA)
- SQL Querying
- Business Analysis
- KPI Development
- Dashboard Design
- Data Visualization
- Business Intelligence
- Customer Churn Analysis

---

# 👤 Author

**Alimata ZOUNGRANA**

Computer Science & Engineering Student

Aspiring Data Analyst | Data Science Enthusiast

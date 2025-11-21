Retail Sales Database Project
Overview
This project presents a comprehensive data pipeline and analytical workflow for retail sales data. The objective is to efficiently explore, clean, and analyze sales transactions, providing actionable business insights and answering key retail questions using Python, SQL, and MySQL Workbench.

Dataset
Source: Kaggle Retail Orders (https://www.kaggle.com/datasets/ankitbansal06/retail-orders)
Description: The dataset contains transactional sales data, including information on customer demographics, product details, quantities sold, prices, and transaction timestamps.

Project Workflow
1. Data Acquisition
•	Downloaded the dataset directly from Kaggle, ensuring access to up-to-date, well-structured retail transactional data.
•	Inspected the data files (typically provided in CSV format), reviewed column definitions, and ensured data completeness before further processing.
2. Data Exploration and Cleaning (Python & Pandas)
•	Utilized Python, specifically the pandas library, for exploratory data analysis (EDA) and preprocessing. This included:
•	Loading the raw dataset into pandas DataFrames.
•	Conducting preliminary analysis such as examining data types, identifying missing or duplicate values, and reviewing descriptive statistics.
Applied data cleaning techniques:
	Removed or imputed missing values as appropriate.
	Standardized categorical columns and reformatted timestamps.
3. Database Connection and Data Export (MySQL Connector)
•	Established a connection between Python and MySQL using the mysql-connector library.
•	Programmatically created required tables in MySQL Workbench by defining appropriate schemas tailored to the sales data structure.
•	Exported the clean, processed data from pandas DataFrames to the respective MySQL tables, using batch inserts and ensuring data was normalized for efficient storage and querying.
4. Business Questions and In-Depth SQL Analysis
After successful data load, formulated and answered five business-oriented questions using SQL queries within MySQL Workbench. Analytical questions tackled includes:

-- Q1. Find the Top 10 revenue generating products
-- Q2. Find the Top 5 Highest Selling Products in each region
-- Q3. Find the each Month over Month growth comparison for 2022 and 2023 sales. E.g. Sales in Jan 2022 Vs Jan 2023
-- Q4. In each Category which month had the highest sales
-- Q5. Which Sub-category have the highest growth by profit in 2023 comparing to 2022
Each query involved data aggregation, grouping, and filtering to derive practical insights for sales and operations decision-making.

Detailed Steps
	Download the retail dataset from Kaggle and save it locally.
	Explore and clean the data using pandas, checking for missing data and correcting inconsistencies.
	Connect to MySQL using the MySQL Connector from Python.
	Define the schema in MySQL Workbench and export the cleaned data from pandas to MySQL tables.
	Write and execute five business-related SQL queries in MySQL Workbench to answer key questions and produce actionable reports.

Technologies Used
	Python (pandas, mysql-connector)
	MySQL Workbench
	SQL

Results and Insights
The result of this project is a robust sales database supporting fast, reliable analysis of retail transactions. By integrating Python and SQL, the workflow automates data preparation, storage, and reporting, enabling efficient data-driven decision making for retail operations. The SQL queries provide managers with deep insights into sales performance, customer segments, product trends, and inventory management.

# Car Analysis & Price Insights Dashboard


## Project Overview

This project focuses on analyzing used car listings to understand market trends, vehicle characteristics, and listed price patterns.

The project uses Python for data cleaning and exploratory data analysis (EDA), MySQL for data querying and analysis, and Power BI to create an interactive dashboard for visualizing key insights.

The goal is to transform raw car listing data into meaningful insights that can support better understanding of the used car market.

**Technologies Used:** Python | Pandas | NumPy | Matplotlib | Seaborn | MySQL | Power BI


## Project Folder Structure

```text
Car_Analysis_Project/
│
├── data/
│   ├── raw/
│   │   └── Car details v3.csv
│   └── processed/
│       └── car_sales_cleaned.csv
│
├── notebooks/
│   └── 01_data_cleaning_and_eda.ipynb
│
├── sql/
│   ├── 01_create_database.sql
│   ├── 02_data_quality_checks.sql
│   ├── 03_fuel_analysis.sql
│   ├── 04_transmission_analysis.sql
│   ├── 05_ownership_analysis.sql
│   ├── 06_brand_analysis.sql
│   ├── 07_price_analysis.sql
│   ├── 08_vehicle_analysis.sql
│   └── 09_business_summary.sql
│
├── outputs/
│   ├── charts/
│   ├── insights/
│   └── screenshots/
│
├── powerbi/
│   └── car_sales_dashboard.pbix
│
├── Project_Report.docx
└── README.md
```

## Problem Statement

The used car market contains a wide range of vehicles with different brands, fuel types, transmission systems, manufacturing years, ownership histories, and price ranges.

Analyzing this information manually can make it difficult to identify market patterns and understand the factors associated with listed prices.

This project uses data analytics techniques to explore used car listings, identify trends, and present meaningful insights through an interactive Power BI dashboard.

## Project Objectives

- Clean and prepare raw used car listing data using Python.
- Perform Exploratory Data Analysis (EDA) to understand the dataset.
- Analyze car listings using SQL queries.
- Identify popular car brands, fuel types, and transmission types.
- Compare average listed prices across different vehicle categories.
- Explore relationships between vehicle specifications and listed prices.
- Build an interactive Power BI dashboard to visualize key findings.



## Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data cleaning and analysis |
| Pandas | Data manipulation |
| NumPy | Numerical operations |
| Matplotlib | Data visualization |
| Seaborn | Statistical visualization |
| Jupyter Notebook | Python development and EDA |
| MySQL | Database management and SQL analysis |
| Power BI | Interactive dashboard development |
| Git & GitHub | Version control and project hosting |

## Skills Demonstrated

- Data Cleaning
- Data Preprocessing
- Exploratory Data Analysis (EDA)
- SQL Queries and Aggregations
- Data Visualization
- Dashboard Development
- Business Insight Generation


## Dataset Description

The project uses a used car listings dataset containing information about different vehicles and their specifications.

**Dataset Details:**
- Original sample size: 3,500 records
- Cleaned dataset: 3,142 records
- Records imported into MySQL and used in Power BI: 3,045
- Number of columns: 17

**Important:** The cleaned CSV and MySQL/Power BI dataset currently have different row counts. This difference of 97 records should be reconciled before final publication.

**Key Features:**
- Car Name
- Manufacturing Year
- Listed Selling Price
- Kilometers Driven
- Fuel Type
- Seller Type
- Transmission
- Ownership Type
- Mileage
- Engine Capacity
- Maximum Power
- Torque
- Number of Seats

The dataset contains vehicle listing information. Listed prices should not be interpreted as confirmed transaction prices or actual revenue.


## Project Workflow

The project was completed in the following stages:

### 1. Data Collection
- Loaded the raw used car dataset using Python.
- Explored the dataset structure and available columns.

### 2. Data Cleaning & Preprocessing
- Checked for missing values and duplicate records.
- Removed duplicate records.
- Extracted numerical values from mileage, engine, maximum power, and torque.
- Converted columns into appropriate data types.
- Saved the cleaned dataset as a CSV file.

### 3. Exploratory Data Analysis (EDA)
- Analyzed car brands, fuel types, and transmission types.
- Explored listed price distributions.
- Compared average listed prices across categories.
- Examined vehicle specifications and correlations.
- Created visualizations using Matplotlib and Seaborn.

### 4. SQL Analysis
- Created a MySQL database and imported the car listing data.
- Performed data quality checks.
- Used SQL queries for brand, fuel, transmission, ownership, price, and vehicle analysis.

### 5. Power BI Dashboard
- Connected Power BI to the MySQL database.
- Created DAX measures and calculated columns.
- Designed five interactive dashboard pages.
- Added slicers, KPI cards, charts, and a Reset Filters button.




## Power BI Dashboard

The interactive Power BI dashboard contains five pages:

### Page 1 – Executive Overview
Provides a summary of car listings through KPI cards, slicers, and charts.

![Executive Overview](outputs/screenshots/01_Executive_Overview.png)

### Page 2 – Brand & Market Analysis
Analyzes brand popularity, average listed prices, fuel distribution, and transmission patterns.

![Brand & Market Analysis](outputs/screenshots/02_Brand_Market_Analysis.png)

### Page 3 – Fuel & Transmission Analysis
Explores fuel preferences, transmission distribution, and their relationship with listed prices.

![Fuel & Transmission Analysis](outputs/screenshots/03_Fuel_Transmission_Analysis.png)

### Page 4 – Ownership & Vehicle Condition
Examines ownership patterns, kilometers driven, and the relationship between distance driven and listed price.

![Ownership & Vehicle Condition](outputs/screenshots/04_Ownership_Vehicle_Condition.png)

### Page 5 – Price & Vehicle Specifications
Analyzes listed price distribution, manufacturing year, engine capacity, and maximum power.

## Key Business Insights

The analysis revealed the following patterns in the used car listings dataset:

- **Popular Fuel Type:** Diesel had the highest number of listings.
- **Popular Transmission:** Manual transmission vehicles accounted for most listings.
- **Leading Brand:** Maruti had the highest number of listings.
- **Price Comparison:** Automatic transmission vehicles had a higher average listed price than manual transmission vehicles.
- **Ownership Pattern:** First-owner vehicles represented the largest share of listings.
- **Brand Pricing:** Luxury brands generally showed higher average listed prices than mass-market brands.
- **Vehicle Usage:** The dataset allowed comparisons between kilometers driven and listed prices.

These findings describe patterns in the available listings and do not establish actual selling prices or market-wide demand.


## How to Run the Project

### Prerequisites
Install the following tools:
- Python
- Jupyter Notebook
- MySQL Server and MySQL Workbench
- Power BI Desktop

### Step 1: Clone the Repository

```bash
git clone <your-github-repository-url>
```

### Step 2: Install Python Libraries

```bash
pip install pandas numpy matplotlib seaborn jupyter
```

### Step 3: Run the Python Notebook

- Open the `notebooks` folder.
- Launch `01_data_cleaning_and_eda.ipynb` using Jupyter Notebook.
- Run the cells to perform data cleaning and exploratory data analysis.

### Step 4: Run SQL Scripts

- Open MySQL Workbench.
- Create the database using `01_create_database.sql`.
- Import the processed dataset.
- Execute the remaining SQL scripts to explore the data.

### Step 5: Open the Power BI Dashboard

- Open `powerbi/car_sales_dashboard.pbix` using Power BI Desktop.
- Configure the MySQL connection if required.
- Refresh the data to explore the interactive dashboard.



## Limitations

- The dataset represents used car listings, not confirmed vehicle transactions.
- The dataset does not contain location-based information.
- Some vehicle specification fields contain missing values.
- Mileage values may use different units, such as kmpl and km/kg.
- The cleaned CSV and MySQL/Power BI datasets currently have different record counts (3,142 and 3,045 respectively).

## Future Scope

- Reconcile the difference in dataset record counts.
- Add geographical analysis if location data becomes available.
- Standardize vehicle specification units.
- Explore machine learning models for estimating used car listing prices.
- Add more interactive comparisons and advanced analytics to the Power BI dashboard.

## Conclusion

This project demonstrates an end-to-end data analytics workflow using Python, SQL, and Power BI. It transforms raw used car listing data into structured information, explores market patterns, and presents useful insights through an interactive dashboard.
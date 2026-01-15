# Exploratory Data Analysis (EDA) Submission

## Project Title

**Uber Request Data Analysis – Demand & Supply Gap Study**

---

## 1. Problem Statement

The objective of this project is to analyze Uber ride request data to identify demand–supply gaps, understand ride request patterns, and uncover reasons for trip failures such as cancellations and unavailability of cars. The insights derived can help improve operational efficiency and customer satisfaction.

---

## 2. Dataset Overview

* **Dataset Name:** Uber Request Data
* **Total Records:** 6,745
* **Total Columns:** 6

### Columns Description:

| Column Name       | Description                                           |
| ----------------- | ----------------------------------------------------- |
| Request id        | Unique ID for each ride request                       |
| Pickup point      | Pickup location (City / Airport)                      |
| Driver id         | Unique driver identifier (null if not assigned)       |
| Status            | Trip status (Completed, Cancelled, No Cars Available) |
| Request timestamp | Date & time when ride was requested                   |
| Drop timestamp    | Date & time when trip was completed                   |

---

## 3. Tools Used

* **Python:** Data cleaning, feature engineering, univariate & bivariate analysis
* **Excel:** Pivot tables, gap analysis, and summary insights
* **SQL (MySQL):** Data validation and business-level analytical queries

---

## 4. Data Cleaning (Python)

The following cleaning steps were performed using Python:

* Converted `Request timestamp` and `Drop timestamp` to datetime format
* Handled missing values without deleting rows (important for analysis)
* Retained null `Driver id` values to identify supply issues
* Ensured column names and data types were consistent

No rows were removed to preserve full demand–supply information.

---

## 5. Feature Engineering (Python)

New features were created to support deeper analysis:

* **Request Hour:** Extracted hour from request timestamp
* **Request Day:** Extracted day of week
* **Time Slot:** Categorized hours into Morning, Afternoon, Evening, Night
* **Gap Indicator:** Identified unmet demand where status ≠ Completed

---

## 6. Univariate Analysis (Python)

* **Status Distribution:** Most requests were completed, followed by No Cars Available and Cancelled
* **Pickup Point Distribution:** Majority of requests originated from the City
* **Hourly Distribution:** Peaks observed during morning and evening hours

These plots helped understand individual variable behavior.

---

## 7. Bivariate Analysis (Python)

* **Pickup Point vs Status:** Airport shows a higher proportion of No Cars Available
* **Hour vs Status:** Supply issues peak during high-demand hours
* **Time Slot vs Status:** Evening and early morning show higher unmet demand

This analysis highlighted key problem areas.

---

## 8. Excel Analysis

Using the cleaned dataset exported from Python:

* Created pivot tables for:

  * Status count
  * Pickup point vs Status
  * Time slot vs Status
* Calculated **Demand–Supply Gap** using formula:

  * Gap = Total Requests – Completed Trips

Excel helped in quick validation and presentation-friendly summaries.

---

## 9. SQL Analysis

Database: **uber_eda**

Key queries executed:

* Total requests by status
* Pickup point vs status analysis
* Hour-wise demand analysis
* Hour vs status breakdown
* Airport-specific demand–supply issues

SQL results validated insights obtained from Python and Excel.

---

## 10. Key Insights

* Significant demand–supply gap exists during peak hours
* Airport pickup point faces frequent unavailability of cars
* Cancellations are higher during early morning and evening hours
* Driver allocation needs improvement during high-demand time slots

---

## 11. Business Recommendations

* Increase driver availability during peak hours
* Improve airport-specific driver deployment
* Introduce incentives for drivers during high-demand periods
* Use predictive analytics to anticipate demand surges

---

## 12. Conclusion

This EDA project successfully identified critical demand–supply gaps in Uber ride operations using Python, Excel, and SQL. The combined approach ensured accurate insights and practical business recommendations that can enhance operational efficiency.

---


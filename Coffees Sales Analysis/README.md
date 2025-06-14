# Coffee Sales Analysis

This repository contains a Jupyter Notebook (`Analysis.ipynb`) that performs an exploratory data analysis (EDA) on a coffee sales dataset. The analysis aims to understand various aspects of coffee sales, including sales trends, popular coffee types, and daily/weekly transaction patterns.

## Table of Contents

- [Introduction](#introduction)
- [Dataset](#dataset)
- [Analysis Highlights](#analysis-highlights)
- [Visualizations](#visualizations)


## Introduction

This project delves into a coffee sales dataset to uncover insights that can help in business decision-making. By visualizing sales trends and key metrics, we aim to provide a clear understanding of customer behavior and product performance.

## Dataset

The analysis uses a dataset named `Coffes Sales Dataset.csv`. This dataset is expected to contain information related to coffee transactions, including but not limited to:
- Dates of transactions
- Coffee names
- Transaction counts
- Other relevant sales metrics

**Note:** The dataset is expected to use a semicolon (`;`) as a separator and `latin1` encoding, with comma (`,`) as a decimal separator for numerical values.


## Analysis Highlights

The notebook performs the following key analyses:

* **Data Loading and Initial Inspection:** Loads the dataset, checks for missing values, and examines data types.
* **Data Cleaning and Preprocessing:** Handles data type conversions (e.g., converting 'date' to datetime, 'transaction_count' to numeric).
* **Feature Engineering:** Extracts 'Day of the week' and potentially other time-based features from the date column.
* **Sales Trends:** Analyzes total coffee sales over time.
* **Daily/Weekly Patterns:** Visualizes total coffee ordered by day of the week.
* **Coffee Type Performance:** Compares total sales per coffee type/name.
* **Weekend vs. Weekday Sales:** Compares sales volume during weekends versus weekdays.

## Visualizations

The notebook includes several visualizations to illustrate the findings:

* Bar plots showing total coffee ordered by day of the week.
* Bar plots displaying total coffee sales per coffee name/type.
* Pie chart comparing total sales between weekend and weekday.
* Other relevant plots to explore sales distribution and trends.

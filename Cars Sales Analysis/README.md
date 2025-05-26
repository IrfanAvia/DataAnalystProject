# 🚗 Car Sales Analysis

This project focuses on analyzing car sales data using data preprocessing, exploratory data analysis (EDA), and clustering techniques to uncover meaningful patterns in the automotive market.

## 📊 Project Overview

- **Goal**: Analyze car sales data 
- **Dataset**: `Car_sales.csv` — includes various car features such as engine size, horsepower, price, and sales volume.
- **Approach**:
  - Data cleaning and preparation
  - Exploratory data analysis (EDA)
  - Feature scaling
  - Clustering with K-Means
  - Visualization of cluster results

## 🧰 Technologies Used

- Python
- Pandas
- Matplotlib & Seaborn
- Scikit-learn

## 🔎 Key Steps in Analysis

1. **Data Import & Preparation**
   - Load dataset with pandas
   - Inspect for missing values or anomalies

2. **EDA (Exploratory Data Analysis)**
   - Summary statistics
   - Visualizations: distributions, pairplots, correlation matrix

3. **Feature Scaling**
   - Standardize numerical features using `StandardScaler`

4. **K-Means Clustering**
   - Determine optimal `k` using Elbow Method
   - Fit and interpret cluster labels

5. **Visualization & Interpretation**
   - Visualize clusters using scatter plots
   - Analyze patterns among cluster groups


## 📂 Project Files

```bash
.
├── analisis.ipynb        # Jupyter Notebook containing full analysis
├── Car_sales.csv         # Dataset file used in the analysis
└── README.md             # Project documentation (this file)

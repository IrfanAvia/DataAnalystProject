# 🎯 Marketing Campaign Analysis

Welcome to the Marketing Campaign Analysis project! This notebook provides a comprehensive, end-to-end solution to analyze and model customer responses to marketing campaigns using EDA, feature engineering, and machine learning.

## 📂 Dataset
The dataset is publicly available on Kaggle:  
[🔗 Marketing Campaign Dataset](https://www.kaggle.com/datasets/khanimar/marketing-campaign-analysis-data)

**Dataset Features:**
- Demographics (age, gender, education)
- Socioeconomic data (account balance, housing, credit)
- Contact methods and campaign history
- Campaign outcome (target: yes/no)

## 🔍 Project Overview

### 1. Data Cleaning & Preprocessing
- Handled missing values (e.g., `daySinceLastCampaign`)
- Removed irrelevant features like `id` and `contactId`
- Mapped categorical values to numerical (e.g., gender, education)
- One-hot encoded categorical variables
- Applied `MinMaxScaler` for feature normalization

### 2. Exploratory Data Analysis (EDA)
- Visualized success/failure trends in target variable
- Compared responses across demographics (age, job, education)
- Key findings:
  - March had highest campaign success rate
  - Account balance, age group, and call duration influence outcomes

### 3. Feature Engineering
- Created `age_group` feature
- Manually encoded education levels
- Dropped correlated/low-impact features

### 4. Model Training & Evaluation
Tested 5 classifiers with `RandomizedSearchCV` optimization:

| Model                  | Best Recall Score |
|------------------------|------------------|
| Logistic Regression    | 80.81%           |
| **Random Forest**      | **88.92%** ✅    |
| Extra Trees            | 88.24%           |
| Gradient Boosting      | 48.38%           |
| XGBoost                | 87.84%           |

✔️ **Random Forest Classifier** selected as final model

### 5. Model Evaluation Metrics
Custom `visualize_metrics()` function displays:
- Confusion Matrix (absolute & %)
- Classification Report
- ROC Curve with AUC Score

## 🧪 Final Model Deployment
- Evaluated on hold-out test set
- Applied preprocessing pipeline to `test.csv`
- Generated `probability_yes` predictions
- Filtered customers with probability > 0.5 for targeting

  ## 📈 Insights & Business Value
- Prioritize Manager job for being marketing campaign target
- Target directed to individuals aged 60 and above may have higher success rate
- Leverage March
- For younger age groups (30-39), consider tailoring the message to address financial stability or long-term benefits. For older age groups, focus on benefits relevant to their life stage.
- Develop campaign message of different job roles, especially for "Manager" and "Worker"
- Investigate Duration and Account Balance to find why longer call correlate with positive response. This may indicate effective communcation and detailed explanation will lead to positive response. And consider campaign should be tailored based on account balance.

## 🚀 How to Use
1. Clone repository or open in Google Colab
2. Run notebook sequentially:
   - Data Loading
   - Preprocessing
   - EDA
   - Modeling
   - Evaluation
   - Final predictions
3. Visualization with Tableau (https://public.tableau.com/views/MarketingCampaignAnalysis_17525652478470/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

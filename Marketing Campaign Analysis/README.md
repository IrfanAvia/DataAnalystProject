🎯 Marketing Campaign Analysis
Welcome to the Marketing Campaign Analysis project! This notebook is a comprehensive, end-to-end solution designed to analyze and model customer responses to marketing campaigns. The project leverages powerful tools such as EDA, feature engineering, and machine learning to uncover insights and predict campaign success.

📂 Dataset
The dataset used in this project is publicly available on Kaggle:
🔗 Marketing Campaign Dataset

The dataset contains anonymized records of past marketing campaigns, with features such as:

Demographics (age, gender, education)

Socioeconomic data (account balance, housing, credit)

Contact methods and campaign history

Campaign outcome (target: yes/no)

🔍 Project Overview
1. Data Cleaning & Preprocessing
Handled missing values (e.g., daySinceLastCampaign).

Removed irrelevant features like id and contactId.

Mapped categorical values to numerical ones (e.g., gender, education).

One-hot encoded categorical variables.

Applied MinMaxScaler to normalize features.

2. Exploratory Data Analysis (EDA)
Visualized success/failure trends in the target variable.

Compared campaign responses across demographics like age, job, and education.

Identified that March had the highest campaign success rate.

Discovered patterns in account balance, age group, and call duration that influence campaign outcomes.

3. Feature Engineering
Created age_group to observe age-related behavior.

Encoded education levels manually.

Dropped correlated or low-impact features.

4. Model Training & Evaluation
Tested 5 different classifiers with hyperparameter optimization via RandomizedSearchCV:

Model	Best Recall Score
Logistic Regression	80.81%
Random Forest	88.92% ✅
Extra Trees	88.24%
Gradient Boosting	48.38%
XGBoost	87.84%

✔️ Random Forest Classifier achieved the highest recall score and was selected as the final model.

5. Model Evaluation Metrics
Custom visualize_metrics() function plots:

Confusion Matrix (absolute & %)

Classification Report

ROC Curve with AUC Score

🧪 Final Model Deployment
The Random Forest model was evaluated on a hold-out test set.

Applied the same preprocessing pipeline to the test.csv dataset.

Generated probability_yes predictions to identify promising leads.

Filtered customers with a probability > 0.5 for potential campaign targeting.

🛠️ Technologies Used
Python 3 (via Google Colab)

Pandas, NumPy, Seaborn, Matplotlib for data manipulation and visualization

Scikit-learn and XGBoost for modeling

Kaggle Hub for dataset retrieval

📈 Insights & Business Value
Most successful campaigns occurred in March, suggesting seasonal timing impacts effectiveness.

Job type and account balance are strong predictors of campaign success.

Enables data-driven targeting, reducing costs and improving conversion rates.

🚀 How to Use
Clone the repository or run the notebook in Google Colab.

Ensure you have access to Kaggle API credentials to download the dataset.

Run through the notebook sections sequentially:

Data Loading

Preprocessing

EDA

Modeling

Evaluation

Final prediction using the best model.

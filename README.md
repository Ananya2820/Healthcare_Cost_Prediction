# Healthcare_Cost_Prediction
🩺 Healthcare Cost Prediction using Machine Learning  This project predicts medical insurance charges based on key factors like age, gender, BMI, number of children, smoking status, and region. It demonstrates the full data science lifecycle — from data exploration and statistical testing to machine learning model building and evaluation.

# Healthcare Cost Prediction

Overview
--------
Predict medical insurance charges using demographic and lifestyle features: age, sex, BMI, children, smoker, region.

Structure
---------
- `sql/CapstoneProject_SQL.sql`  — SQL to create a simple table and run summary queries
- `notebook/Healthcare_Cost_Prediction_Notebook.ipynb` — Jupyter notebook for EDA, hypothesis testing, regression modelling
- `presentation/Healthcare_Cost_Prediction_Presentation.pptx` — Presentation based on the outline
- `requirements.txt` — Python packages used

How to run
----------
1. Download `insurance.csv` from Kaggle (https://www.kaggle.com/mirichoi0218/insurance) and place it in the `data/` folder.
2. To run SQL queries: import `insurance.csv` into SQLite/MySQL (instructions in SQL file).
3. Open the notebook in Jupyter (`notebook/Healthcare_Cost_Prediction_Notebook.ipynb`) and run cells.
4. Install required packages:
   ```
   pip install -r requirements.txt
   ```


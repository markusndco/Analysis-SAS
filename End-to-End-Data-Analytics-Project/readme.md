# 📊 Multi-Dataset SAS Data Analysis & Modeling

This project demonstrates a variety of **SAS programming, data visualization, and statistical modeling techniques** applied to multiple SAS built-in datasets.  
It covers descriptive statistics, correlation analysis, and both simple and multiple linear regression, including diagnostics and multicollinearity handling.

---

## 📊 Project Objective

To apply SAS skills for:
- Data summarization and visualization
- Deriving new calculated fields
- Testing statistical relationships
- Building and refining regression models
- Addressing multicollinearity for model stability

---

## 📁 Repository Structure

| File | Description |
|------|-------------|
| `Project_Report.docx` | Full project write-up with SAS code, outputs, and interpretations |
| `Program_X.sas` | SAS code implementing all analysis tasks |

---

## 🚀 Methodologies Used

### **Cholesterol by Sex – Vertical Bar Chart**
- Dataset: `SASHELP.HEART`
- Calculated mean cholesterol levels for **male** and **female**
- Customized bar chart with new colors and title
- **Result**: Female average cholesterol = 228.54; Male = 226.05

### **BMI Calculation**
- Dataset: `SASHELP.CLASS`
- Formula: `BMI = (Weight / Height²) × 703`
- Produced table of BMI values for all students
- Most values in healthy range (~15–21)

### **Correlation Analysis: At-Bats vs Hits**
- Dataset: `SASHELP.BASEBALL`
- Very strong positive correlation (r = 0.984, p < 0.0001)
- Interpretation: Players with more at-bats have more hits

### **Simple Linear Regression: BMI vs Age**
- Dataset: `SASHELP.BMIMEN`
- Model: `BMI = 17.90 + 0.16 × Age`
- R² = 0.4091 → Age explains ~41% of BMI variation
- Positive slope: BMI increases ~0.16 per year of age

### **Multiple Linear Regression: Car Price Prediction**
- Dataset: `SASHELP.CARS`
- Predictors: EngineSize, Horsepower, MPG_City, MPG_Highway
- R² ≈ 0.71 → Strong fit
- All predictors significant, though some effects were unexpected

### **Multicollinearity Handling & Backward Elimination**
- Detected multicollinearity between EngineSize & Horsepower
- Used backward elimination to remove non-significant variables
- Final model: EngineSize, Horsepower, MPG_Highway retained

---

## 📉 Key Visualizations

- **Bar Charts** of cholesterol by sex
- **Correlation Plots** for baseball data
- **Regression Fit Plots** for BMI and car price models
- **Residual & Diagnostic Plots** for regression models

---

## 🛠 Tools & Technologies

- **SAS** (Base SAS, SAS/STAT, SAS/GRAPH)
- SASHELP datasets: `HEART`, `CLASS`, `BASEBALL`, `BMIMEN`, `CARS`
- Statistical Procedures:
  - `PROC SGPLOT` – Graphs
  - `PROC MEANS` – Summary stats
  - `PROC CORR` – Correlation analysis
  - `PROC REG` – Regression modeling
  - `PROC GLMSELECT` – Backward elimination

---

## 🎯 Learning Outcomes

- Creating and customizing visualizations in SAS
- Deriving new computed fields
- Assessing relationships with correlation and regression
- Handling multicollinearity in predictive modeling

---

## 🔍 Tags

`#sas` `#regression` `#proc-sgplot` `#proc-corr` `#proc-reg`  
`#multicollinearity` `#sashelp` `#data-visualization`

---

## 👨‍💻 Author

**Aryan Sharma**  
*Data Analytics | SAS Programming | Predictive Modeling*

---

## 📜 License

This project is intended for educational and portfolio demonstration purposes.  
If you use this work or modify it, **please give proper credit or cite me**.

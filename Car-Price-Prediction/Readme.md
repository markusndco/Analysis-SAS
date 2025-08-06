# 🚗 SASHELP Cars Analysis & Hypothesis Testing

This project uses the **SASHELP.Cars** dataset to perform exploratory analysis, statistical testing, and data visualization for luxury car market insights. The goal is to assist a dealership owner in making data-driven decisions regarding inventory restocking.

---

## 📊 Project Objective

To demonstrate the use of **SAS programming** for:
- Summarizing and analyzing automotive data
- Testing statistical claims using t-tests
- Validating assumptions of statistical inference
- Providing recommendations based on evidence

---

## 📁 Repository Structure

| File | Description |
|------|-------------|
| `Assignment 6.pdf` | Assignment details and requirements |
| `Program_X.sas` | SAS code for data preparation, analysis, and testing |
| `Solution.pdf` | Final report with SAS outputs, charts, and interpretations |

---

## 🚀 Methodologies Used

### **Part A – Summary Statistics for Luxury Brands**
- Dataset filtered to **BMW**, **Audi**, and **Infiniti**
- Metrics calculated: Average MSRP, Average City MPG, Average Highway MPG, Average Cylinders
- Used `PROC SQL` for summarization

### **Part B – Hypothesis Test: Audi City MPG**
- **Claim**: Audi vehicles average more than 20 MPG in city driving
- Checked **normality assumption** via Q-Q plots and histograms
- Performed **one-sample t-test** (`PROC TTEST`)
- **Result**: No statistical evidence to support the claim; recommendation not to run the commercial

### **Part C – Highway MPG Comparison: BMW vs Audi**
- Checked **normality** and **equality of variances**
- Conducted **two-sample t-test** (pooled method)
- **Result**: No statistically significant difference in highway MPG; both brands offer comparable efficiency

---

## 📉 Key Visualizations

- **Summary Tables** for luxury brands
- **Q-Q Plots** and **Histograms** for normality assessment
- **T-test Results** with confidence intervals

---

## 🛠 Tools & Technologies

- **SAS** (Base SAS, SAS/STAT, SAS/GRAPH)
- SASHELP Library dataset: `SASHELP.Cars`
- Procedures: `PROC SQL`, `PROC UNIVARIATE`, `PROC TTEST`

---

## 🎯 Learning Outcomes

- Performing grouped summarization using SQL in SAS
- Validating statistical assumptions for hypothesis testing
- Conducting one-sample and two-sample t-tests
- Translating statistical outputs into actionable business recommendations

---

## 🔍 Tags

`#sas` `#sashelp` `#proc-sql` `#proc-ttest` `#data-analysis`  
`#statistical-testing` `#cars-dataset` `#mpg-analysis` `#luxury-cars`

---

## 👨‍💻 Author

**Aryan Sharma**  
*Data Analytics | SAS Programming | Statistical Analysis*

---

## 📜 License

This project is intended for educational and portfolio demonstration purposes.  
If you use this work or modify it, **please give proper credit or cite me**.

# 🚒 Firefighter Pay & Overtime Analysis

This project analyzes firefighter pay data to determine patterns and relationships in **overtime pay** across different ranks.  
Using SAS statistical procedures, the analysis examines categorical differences, relationships between pay categories and rank, and whether overtime pay differs significantly by role.

---

## 📊 Project Objective

To demonstrate the use of **SAS procedures** for:
- Creating and working with categorical variables
- Testing hypotheses using binomial, chi-square, and ANOVA methods
- Interpreting p-values and statistical results in a business context

---

## 📁 Repository Structure

| File | Description |
|------|-------------|
| `Assignment_Aryan_Sharma.pdf` | Assignment details, SAS outputs, and interpretations |
| `Program_X.sas` | SAS code for data preparation, hypothesis testing, and statistical modeling |

---

## 🚀 Methodologies Used

### **Part 1 – Binomial Test for Overtime Pay Proportion**
- Created a new categorical variable:  
  - **High**: OT > $25,000  
  - **Low**: OT ≤ $25,000
- **Observed**: 50% High, 50% Low (19 each)
- **Test**: One-sample binomial test against 40% High / 60% Low
- **Result**: p-value = 0.2083 → No significant difference from expected proportions

### **Part 2 – Chi-Square Test for Independence**
- Tested relationship between **Overtime Pay Category** (High vs Low) and **Rank** (Captain, Engineer, Firefighter)
- **Result**: p-value = 0.9242 → No evidence of association; overtime category independent of rank

### **Part 3 – ANOVA: Overtime Pay by Rank**
- Compared mean overtime pay across ranks
- **Result**: p-value = 0.7695 → No significant difference in mean overtime pay between ranks
- **Tukey’s post-hoc test**: No pairwise differences found

---

## 📉 Key Visualizations

- **Frequency Tables** for overtime pay category
- **Chi-Square Summary Tables**
- **Boxplots** of overtime pay by rank
- **Tukey HSD Comparisons** for rank differences

---

## 🛠 Tools & Technologies

- **SAS** (Base SAS, SAS/STAT)
- Statistical Procedures:
  - `PROC FREQ` (Binomial & Chi-Square)
  - `PROC ANOVA` (One-way ANOVA & Tukey HSD)

---

## 🎯 Learning Outcomes

- Creating and recoding categorical variables in SAS
- Applying binomial, chi-square, and ANOVA statistical tests
- Interpreting hypothesis test results in practical decision-making contexts
- Using SAS to combine categorical and continuous statistical analysis

---

## 🔍 Tags

`#sas` `#anova` `#chi-square` `#binomial-test`  
`#firefighter-pay` `#overtime-analysis` `#sashelp` `#proc-anova`

---

## 👨‍💻 Author

**Aryan Sharma**  
*Data Analytics | SAS Programming | Statistical Analysis*

---

## 📜 License

This project is intended for educational and portfolio demonstration purposes.  
If you use this work or modify it, **please give proper credit or cite me**.

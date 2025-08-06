- **Findings**:
- Moderate positive correlation (r ≈ 0.50)
- p-value < 0.0001 indicates strong statistical significance
- Some heteroscedasticity present; other assumptions reasonably met

---

### **Part B – Multiple Linear Regression**
- Stepwise selection identified best predictors:
- `nHits` – Hits in 1986
- `nOuts` – Put Outs in 1986
- `CrRuns` – Career Runs
- `CrAtBat` – Career Times at Bat
- `nAtBat` – Times at Bat in 1986
- **Model Performance**:
- R² = 0.5601, Adjusted R² = 0.5516
- Explains ~56% of salary variation
- **Notes**:
- Some multicollinearity (VIF > 10) for career metrics
- Slight heteroscedasticity at higher fitted values

---

## 📉 Key Visualizations

- **Fit Diagnostics** (residual plots, Q-Q plots, Cook’s distance)
- **Regression Fit Plots**
- **Residual Analysis** for each predictor
- **Model Summary Tables**

---

## 🛠 Tools & Technologies

- **SAS** (Base SAS, SAS/STAT)
- SASHELP Library dataset: `SASHELP.Baseball`
- Procedures: `PROC REG`, `PROC GLMSELECT`

---

## 🎯 Learning Outcomes

- Building regression models in SAS
- Evaluating statistical significance and model fit
- Diagnosing model assumptions and interpreting outputs
- Applying feature selection techniques for predictive modeling

---

## 🔍 Tags

`#sas` `#regression` `#multiple-linear-regression` `#sports-analytics`  
`#salary-modeling` `#sashelp` `#proc-reg` `#baseball-data`

---

## 👨‍💻 Author

**Aryan Sharma**  
*Data Analytics | SAS Programming | Predictive Modeling*

---

## 📜 License

This project is intended for educational and portfolio demonstration purposes.  
If you use this work or modify it, **please give proper credit or cite me**.

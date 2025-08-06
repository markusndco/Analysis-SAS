# 🍕 Pizza Nutrition PCA & Multicollinearity Analysis

This project uses a **pizza nutrition dataset** containing 300 samples from 10 brands (A–J) to explore relationships between nutritional variables and identify redundancy through **multicollinearity analysis**.  
It applies **Principal Components Analysis (PCA)** to reduce dimensionality and improve interpretability of the data.

---

## 📊 Project Objective

To demonstrate the use of **SAS statistical techniques** for:
- Detecting and addressing multicollinearity
- Applying PCA for dimensionality reduction
- Interpreting eigenvalues, scree plots, and factor loadings
- Comparing full and reduced models for efficiency and accuracy

---

## 📁 Repository Structure

| File | Description |
|------|-------------|
| `Assignment10_AryanSharma.pdf` | Full report with SAS outputs, PCA results, and interpretations |
| `Program_X.sas` | SAS code for data import, correlation analysis, and PCA modeling |
| `pizza.csv` | Raw nutrition dataset used in analysis |

---

## 🚀 Methodologies Used

### **Part 1 – Multicollinearity Detection**
- **Variables analyzed**: mois, prot, fat, ash, sodium, carb, cal
- Pearson correlation analysis revealed:
  - Very high correlation between **fat** and **sodium** (r = 0.93)
  - Strong correlation between **ash** and both **fat** (r = 0.79) and **sodium** (r = 0.81)
  - Strong negative correlation between **prot** and **carb** (r = -

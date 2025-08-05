# 👟 SASHELP Shoes Sales Visualization & Analysis

This project uses the **SASHELP.Shoes** dataset to explore and visualize global shoe sales data.  
Through **SAS data manipulation** and **graphical procedures**, the project delivers clear insights into product sales performance, regional sales distribution, and product inventory composition.

---

## 📊 Project Objective

To demonstrate the use of **SAS procedures** for:
- Aggregating and summarizing data
- Creating professional statistical graphics
- Extracting actionable insights from retail sales data

---

## 📁 Repository Structure

| File | Description |
|------|-------------|
| `Problem Statement.pdf` | Assignment instructions and requirements |
| `Program 5A.sas` | SAS code for bar chart and boxplot |
| `Program 5B.sas` | SAS code for 3D pie chart |
| `Solution.pdf` | Final report with code outputs, tables, and charts |

---

## 🚀 Methodologies Used

### 1. **Vertical Bar Chart – Product Sales**
- Procedure: `PROC SGPLOT`
- Products analyzed: **Boot**, **Sandal**, **Slipper**
- Displays average total sales per product
- Bars customized: color change, half width, sorted descending

### 2. **Boxplot – Sales Distribution in Asia**
- Procedure: `PROC BOXPLOT`
- Displays 5-number summary for sales in **Asia**
- Includes detection and visualization of outliers
- Uses `OUTBOX=` modifier to create a dataset of summary statistics

### 3. **3D Pie Chart – Product Inventory Composition**
- Procedure: `PROC GCHART`
- Visualizes product inventory share
- Explodes the slice of the **highest selling product**
- Adds arrow line labels for clarity

---

## 📉 Key Visualizations

- **Average Total Sales** of selected products
- **Boxplot** showing sales distribution and outliers in Asia
- **3D Pie Chart** showing product inventory percentage

---

## 🛠 Tools & Technologies

- **SAS** (Base SAS, SAS/GRAPH)
- SASHELP Library dataset: `SASHELP.Shoes`
- Graphical Procedures: `SGPLOT`, `BOXPLOT`, `GCHART`

---

## 🎯 Learning Outcomes

- Creating and customizing professional SAS visualizations
- Understanding and applying SASHELP dataset structures
- Combining statistical summaries with visual analytics
- Enhancing readability and interpretation of business data

---

## 🔍 Tags

`#sas` `#sashelp` `#data-visualization` `#proc-sgplot` `#proc-boxplot`  
`#proc-gchart` `#statistical-graphics` `#sales-analysis` `#retail-data`

---

## 👨‍💻 Author

**Aryan Sharma**  
*Data Analytics | Statistical Graphics | SAS Programming*

---

## 📜 License

This project is intended for educational and portfolio demonstration purposes. Attribution is appreciated.

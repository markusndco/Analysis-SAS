/*Aryan Sharma*/
/* Step 1: Create a dataset with selected products */
data selected_products;
    set sashelp.shoes;
    where Product in ("Boot", "Sandal", "Slipper");  /* Filter for selected products */
run;

/* Step 2: Calculate average sales for each product */
proc means data=selected_products noprint;
    class Product;
    var Sales;
    output out=avg_sales mean=Avg_Sales;
run;

/* Step 3: Clean up the avg_sales dataset */
data avg_sales_clean;
    set avg_sales;
    if Product ne '';  /* Remove empty rows */
run;

/* Step 4: Print to confirm average sales data */
proc print data=avg_sales_clean noobs label;
    title "Average Sales for Selected Products";
    label Product = "Product Type"
          Avg_Sales = "Average Sales";
run;

/*Aryan Sharma*/
/* Step 5: Create the vertical bar chart */
proc sgplot data=avg_sales_clean;
    vbar Product / response=Avg_Sales
                   dataskin=pressed              /* Add a modern look */
                   fillattrs=(color=lightblue)   /* Set bar color to light blue */
                   barwidth=0.5                  /* Halve the bar width */
                   categoryorder=respdesc;       /* Order bars from largest to smallest */
    title "Average Total Sales of Boots, Sandals, and Slippers";
    yaxis label="Average Sales" grid;
    xaxis label="Product";
run;

proc sql;
    create table product_inventory as
    select Product, sum(Inventory) as Total_Inventory
    from sashelp.shoes
    where Product in ("Boot", "Sandal", "Slipper")
    group by Product;
quit;

/* Step 2: Create a 3D Pie Chart */
proc gchart data=product_inventory;
    pie3d product / type=pct	                 
                    explode=1                
                    noheading;               
    title "3D Pie Chart: Percent Composition of Product Inventory";
run;
quit;
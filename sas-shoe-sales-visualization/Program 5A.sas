/* Part 1 */
data selected_products;
    set sashelp.shoes;
    where Product in ("Boot", "Sandal", "Slipper");  /* Changed "Slippers" to "Slipper" */
run;

proc means data=selected_products noprint;
    class Product;
    var Sales;
    output out=avg_sales mean=Avg_Sales;
run;

data avg_sales_clean;
    set avg_sales;
    if Product ne '';
run;

proc print data=avg_sales_clean noobs label;
    title "Average Sales for Selected Products";
    label Product = "Product Type"
          Avg_Sales = "Average Sales";
run;

proc sgplot data=avg_sales_clean;
    vbar Product / response=Avg_Sales 
                   dataskin=pressed
                   fillattrs=(color=lightblue)
                   barwidth=0.5
                   categoryorder=respdesc;
    title "Average Total Sales of Boots, Sandals, and Slippers";
    yaxis label="Average Sales";
    xaxis label="Product";
run;


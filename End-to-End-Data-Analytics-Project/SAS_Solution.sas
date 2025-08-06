/*Part 1*/

proc means data=sashelp.heart noprint;
    class sex;
    var cholesterol;
    output out=avg_cholesterol mean=avg_cholesterol;
run;

proc sgplot data=avg_cholesterol;
    where _TYPE_ = 1; /* Filter for valid grouped output */
    vbar sex / response=avg_cholesterol 
                stat=mean 
                fillattrs=(color=lightblue) 
                datalabel;
    title "Average Cholesterol Levels by Sex";
    yaxis label="Average Cholesterol";
    xaxis label="Sex";
run;

/*Part 2*/
proc print data=sashelp.class;
    title "Original SAS.CLASS Dataset";
run;

data class_bmi;
    set sashelp.class;
    BMI = (weight / (height**2)) * 703;
run;

proc print data=class_bmi;
    var name sex age height weight BMI;
    title "BMI for Students in SAS.CLASS";
run;

/*Part 3*/
/*Scatterplot between the 2 variables*/
proc sgplot data=sashelp.baseball;
    scatter x=nAtBat y=nHits;
    reg x=nAtBat y=nHits / lineattrs=(color=red thickness=2);
    title "Scatter Plot with Regression Line: nAtBat vs. nHits";
run;

/*Correlation*/
proc corr data=sashelp.baseball pearson nosimple;
    var nAtBat nHits;
    title "Pearson Correlation Between At Bats and Hits";
run;

/*Part 4*/
proc reg data=sashelp.bmimen;
    model BMI = Age;
    title "Simple Linear Regression: BMI vs. Age";
run;
quit;

/*Part 5*/
proc reg data=sashelp.cars;
    model MSRP = EngineSize Horsepower MPG_City MPG_Highway;
    title "Multiple Linear Regression: MSRP vs Engine, Horsepower, MPG";
run;
quit;

/*Part 6*/
/*VIF Method for multicollinearity*/
proc reg data=sashelp.cars;
    model MSRP = EngineSize Horsepower MPG_City MPG_Highway / vif;
    title "Multicollinearity Check using VIF";
run;
quit;

/*Backward Elimination method*/
proc reg data=sashelp.cars;
    model MSRP = EngineSize Horsepower MPG_City MPG_Highway / selection=backward slstay=0.05;
    title "Backward Elimination to Address Multicollinearity";
run;
quit;






proc import datafile="/home/u64171923/Pizza.csv"
    out=work.pizza
    dbms=csv
    replace;
    getnames=yes;
run;


/*Part b*/
proc corr data=work.pizza plots=matrix(histogram);
    var mois prot fat ash sodium carb cal;
run;

/*Part C*/
proc princomp data=work.pizza out=pca_out plots=scree;
    var mois fat carb cal;
run;

/*Part 2A*/
proc princomp data=work.pizza out=pca_part2 plots=scree;
    var mois fat cal;
run;

data mycars;
    set sashelp.cars;
run;	

proc print data=mycars;
run;

/*Part 1*/

proc sql;
    create table summary_stats as
    select 
        make,
        mean(msrp) as Avg_MSRP format=dollar10.,
        mean(mpg_city) as Avg_City_MPG,
        mean(mpg_highway) as Avg_Highway_MPG,
        mean(cylinders) as Avg_Cylinders
    from mycars
    where make in ('BMW', 'Audi', 'Infiniti')
    group by make;
quit;

/*Part 2*/

data audi_cars;
    set mycars;
    if make = 'Audi';
run;

/*Normality*/
proc univariate data=audi_cars normal;
    var mpg_city;
    histogram mpg_city / normal;
    probplot mpg_city / normal(mu=est sigma=est);
    inset mean std / position=ne;
run;

/*T-test*/

proc ttest data=audi_cars h0=20 sides=U alpha=0.05;
    var mpg_city;
run;

/*Part 3*/

data bmw_audi;
    set mycars;
    if make in ('BMW', 'Audi');
run;

proc ttest data=bmw_audi alpha=0.05;
    class make;
    var mpg_highway;
run;
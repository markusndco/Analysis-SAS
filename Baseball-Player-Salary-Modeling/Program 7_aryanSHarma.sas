DATA work.baseball_copy;
    SET sashelp.baseball;
RUN;

PROC CONTENTS DATA=work.baseball_copy;
RUN;

PROC PRINT DATA=work.baseball_copy ;
RUN;

/*Part A*/

DATA baseball_clean;
    SET sashelp.baseball;
    WHERE Salary IS NOT MISSING;
RUN;

PROC REG DATA=baseball_clean;
    MODEL Salary = nHits;
RUN;
QUIT;

/*Part B*/

DATA work.baseball_clean;
    SET sashelp.baseball;
    WHERE Salary IS NOT MISSING;
RUN;

/*Regression with all the y variables*/

PROC REG DATA=work.baseball_clean;
    MODEL Salary = nHits nRuns nOuts CrRuns CrHits CrAtBat YrMajor nAtBat nAssts / VIF TOL COLLIN;
    TITLE "Full Model: Predicting Salary with All Selected Predictors";
RUN;
QUIT;

/*Stepwise regression*/
PROC REG DATA=work.baseball_clean;
    MODEL Salary = nHits nRuns nOuts CrRuns CrHits CrAtBat YrMajor nAtBat nAssts
        / SELECTION=STEPWISE SLENTRY=0.15 SLSTAY=0.15 VIF TOL;
    TITLE "Stepwise Selection for Optimal Predictor Subset";
RUN;
QUIT;
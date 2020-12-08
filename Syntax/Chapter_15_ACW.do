/* The following command line opens the NYS data -- be sure to replace  */
/* [directory_name] with the location of the data file on your system.  */

use "[directory_name]nys_1.dta", clear


/* Estimate a simple bivariate regression model */
regress thftu5 age

/* Compute predicted values -- note that you need to provide a variable a name */
predict yhat1

/* Compute residuals -- note that you need to provide a variable name */
predict resid1, r

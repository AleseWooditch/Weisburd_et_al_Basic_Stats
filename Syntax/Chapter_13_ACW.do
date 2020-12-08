/* The following command line opens the NYS data -- be sure to replace  */
/* [directory_name] with the location of the data file on your system.  */

use "[directory_name]nys_1.dta", clear



/* To compute measures of association in a cross-tabulation -- All that Stata */
/* has to offer */

tabulate gpa imp_coll, all

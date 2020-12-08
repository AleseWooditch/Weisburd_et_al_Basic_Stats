/* The following command line opens the NYS data -- be sure to replace  */
/* [directory_name] with the location of the data file on your system.  */

use "[directory_name]nys_1.dta", clear

/* The following command computes descriptive statistics, including the median */
summarize marijuan hit_stdt beatnotr, detail

/* The following command computes just the median and mean for the listed variables */
tabstat marijuan hit_stdt beatnotr, statistics( median mean )

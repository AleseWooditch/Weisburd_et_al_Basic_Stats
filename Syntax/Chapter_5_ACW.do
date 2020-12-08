/* The following command line opens the NYS data -- be sure to replace  */
/* [directory_name] with the location of the data file on your system.  */

use "[directory_name]nys_1.dta", clear

/* The following command computes descriptive statistics, including numerous percentiles */
summarize marijuan hit_stdt beatnotr, detail

/* The following command computes just the measures requested in the parentheses:   */
/* Maximum, Minimum, Range, Standard deviation, Variance, Coefficient of Variation, */
/* 5th Percentile, respectively. */
tabstat age marijuan hit_stdt, statistics( max min range sd var cv p5)

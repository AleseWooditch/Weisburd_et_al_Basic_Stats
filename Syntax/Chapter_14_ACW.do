/* The following command line opens the NYS data -- be sure to replace  */
/* [directory_name] with the location of the data file on your system.  */

use "[directory_name]nys_1.dta", clear


/* Generate a correlation matrix */
pwcorr hit_stdt cheat beatnotr marijuan, obs sig

/* Compute Spearman's r for the same list of variables */
spearman hit_stdt cheat beatnotr marijuan, stats(rho obs p) pw

/* Generate a scatterplot */
twoway (scatter cheat marijuan)

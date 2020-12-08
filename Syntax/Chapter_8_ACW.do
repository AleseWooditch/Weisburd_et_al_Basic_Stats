/* The following command line opens the ex_8_1 data file -- be sure to replace  */
/* [directory_name] with the location of the data file on your system.  */

use "[directory_name]ex_8_1.dta", clear


/* Perform the binomial test */
bitest crime == 0.5

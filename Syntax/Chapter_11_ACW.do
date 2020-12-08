/* The following command line opens the NYS data -- be sure to replace  */
/* [directory_name] with the location of the data file on your system.  */

use "[directory_name]nys_1.dta", clear


/* Simple t-test comparing group means in marijuana use by sex. */
ttest marijuan, by(sex)


/* Dependent two-sample t-test, which is pairing the number of times a  */
/* youth hit a teacher with the number of times they hit a student */

ttest hit_stdt == hit_prnt

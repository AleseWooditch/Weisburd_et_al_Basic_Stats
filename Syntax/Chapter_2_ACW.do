/* The following command lines open the NYS data and generate a full listing */
/* of variables and details about those variables. Note that you need to replace */
/* [directory_name] with the location of the nys_1.dta data file that you downloaded. */

use "[directory_name]nys_1.dta", clear
codebook


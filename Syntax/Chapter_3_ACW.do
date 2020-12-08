* The following command line opens the NYS data -- be sure to replace  *
* [directory_name] with the location of the data file on your system.  *

use "[directory_name]nys_1.dta", clear

* Compute a frequency distribution using hit other students measure of delinquency. *
tab hit_stdt


* Produce a histogram for hit other students. *
histogram hit_stdt


* The following line only needs to be run once 
ssc install fbar
* Basic bar chart with frequency counts * 
fbar marijuan 
fbar marijuan , perc
fbar marijuan , totalpc by(sex)


* The following command lines open the crime time series data and clears out the NYS data *
use "[directory_name]/crime_ts.dta", clear

* To reproduce Figure 3.11 *
twoway line total year

* To reproduce Figure 3.12 *
twoway (line total year)(line murder year)

* To reproduce Figure 3.13 *
twoway (line total year, yaxis(1))(line murder year, yaxis(2))

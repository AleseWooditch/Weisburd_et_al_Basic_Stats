/* The following command line opens the data file for Table 12.4 -- be  */
/* sure to replace [directory_name] with the location of the data file  */
/* on your system.                                                      */

use "[directory_name]ex12_1.dta", clear


/* Estimate a one-way ANOVA with detailed output */
oneway age crime, tabulate

/* Estimate a one-way ANOVA with the anova command */
anova age crime


/* To compute Tukey HSD, first need to install two user-written procedures */
/* Run the next two lines ONE TIME ONLY -- they will install the procedures you need */

net install tukeyhsd, from(https://stats.idre.ucla.edu/stat/stata/ado/analysis/)
net install sg101, from(http://www.stata.com/stb/stb47)


/* After installing tukeyhsd, there is a two-step process to obtain Tukey's HSD: */
/* 1. Run the one-way ANOVA using the anova command */
/* 2. Run the tukeyhsd command */

anova age crime
tukeyhsd crime

/* Computation of the Kruskal-Wallis test */
kwallis age, by(crime)

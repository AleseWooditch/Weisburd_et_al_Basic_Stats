/* The following lines enter the data from Table 9.7      */
/* The first lines clears out any existing data in Stata. */

clear
input arrest prison count
1 1 33
1 2 19
2 1 67
2 2 48
end

/* The following command computes the chi-square and uses the frequency */
/* weight option to indicate which variable has the count information. */
tabulate arrest prison [fweight = count], chi2

/* The following lines enter the data from Table 9.15      */
/* The first lines clears out any existing data in Stata. */

clear
input father delinq count
1 1 77
1 2 25
1 3 19
2 1 263
2 2 97
2 3 44
3 1 224
3 2 97
3 3 66
4 1 82
4 2 52
4 3 38
5 1 56
5 2 30
5 3 52
end

/* The following command computes the chi-square and uses the frequency */
/* weight option to indicate which variable has the count information. */
tabulate father delinq [fweight = count], chi2

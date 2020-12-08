* Encoding: UTF-8.
/* The following lines beginning with DATA LIST enter the data from Table 9.7.
/* Note that by entering the data in an SPSS syntax file, we do not need to enter
/* commands to rename the variables -- the names are given in the DATA LIST command.

DATA LIST LIST
  / arrest prison count .
BEGIN DATA.
  1,1,33
  1,2,19
  2,1,67
  2,2,48
END DATA.

WEIGHT BY count.

CROSSTABS
  /TABLES=arrest BY prison 
  /STATISTICS=CHISQ .


/* The following lines enter the data from Table 9.15 and calculate the chi-square test.

DATA LIST LIST
  / father delinq count .
BEGIN DATA.
1, 1, 77
1, 2, 25
1, 3, 19
2, 1, 263
2, 2, 97
2, 3, 44
3, 1, 224
3, 2, 97
3, 3, 66
4, 1, 82
4, 2, 52
4, 3, 38
5, 1, 56
5, 2, 30
5, 3, 52
END DATA.

WEIGHT BY count.

CROSSTABS
  /TABLES=father BY delinq 
  /STATISTICS=CHISQ .


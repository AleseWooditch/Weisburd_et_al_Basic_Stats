* Encoding: UTF-8.
/* The first thing you will need to do is replace [directory_name] with the location of the
/* data file that you saved on your computer system. 

GET  FILE='[directory_name]/ex12_1.sav'.

DATASET NAME EX121 WINDOW=FRONT.

/* One-way ANOVA for age and crime using ONEWAY.
ONEWAY age BY crime .

/* One-way ANOVA using the MEANS command.
MEANS TABLES=age BY crime
  /CELLS MEAN COUNT STDDEV
  /STATISTICS ANOVA.

/* Computing Tukey's HSD statistic.
ONEWAY age BY crime
  /POSTHOC=TUKEY .

/* Computing the Kruskal-Wallis test.
NPAR TESTS
  /K-W = age BY crime (1,3) .

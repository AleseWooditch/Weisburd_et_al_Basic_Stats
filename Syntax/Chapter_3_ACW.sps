* Encoding: UTF-8.
/* This syntax file illustrates the use of various graphics commands in SPSS
/* The first thing you will need to do is replace [directory_name] with the location of the
/* data file that you saved on your computer system. If you are using the Student Version 
/* of SPSS, uncomment (i.e., remove the slash [/] and star [*]) the line with the student data file 
/* (nys_1_student.sav) and remove the line with nys_1.sav listed as the data file.

GET  FILE='[directory_name]/nys_1.sav'.
/* GET  FILE='[directory_name]nys_1_student.sav'.

DATASET NAME NYS WINDOW=FRONT.

/* Use of the FREQUENCIES command and to create a histogram.
FREQUENCIES VARIABLES=hit_stdt  /HISTOGRAM .

/* Graphics commands that illustrate the creation of histograms
GRAPH  /HISTOGRAM=hit_stdt.

/* Graphics commands that illustrate the creation of bar charts, clustered bar charts
GRAPH /BAR=marijuan.
GRAPH  /BAR(GROUPED)=PCT BY marijuan BY sex.
GRAPH  /BAR(GROUPED)=COUNT BY marijuan BY sex.

/* Open the crime time series data file and make it the active data set.
GET  FILE='[directory_name]/crime_ts.sav'.
DATASET NAME crimets WINDOW=FRONT.

/* Reproduction of Figure 3.11 in the text.
GRAPH  /LINE(SIMPLE)=VALUE(total) BY year.

/* Reproduction of Figure 3.12 in the text.
GRAPH  /LINE(MULTIPLE)=VALUE(total murder) BY year.



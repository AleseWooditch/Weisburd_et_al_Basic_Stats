* Encoding: UTF-8.
/* The first thing you will need to do is replace [directory_name] with the location of the
/* data file that you saved on your computer system. If you are using the Student Version 
/* of SPSS, uncomment (i.e., remove the slash [/] and star [*]) the line with the student data file 
/* (nys_1_student.sav) and remove the line with nys_1.sav listed as the data file.

GET  FILE='[directory_name]nys_1.sav'.
/* GET  FILE='[directory_name]nys_1_student.sav'.

DATASET NAME NYS WINDOW=FRONT.

/* Compute Pearson's r .
CORRELATIONS
  /VARIABLES=hit_stdt hit_prnt hit_tchr cheat
  /STATISTICS DESCRIPTIVES .

/* Compute Spearman's r.
NONPAR CORR 
  /VARIABLES=hit_stdt hit_prnt hit_tchr cheat .


/* Generate a simple scatterplot.
GRAPH 
  /SCATTERPLOT(BIVAR)=beatnpar WITH hit_stdt .

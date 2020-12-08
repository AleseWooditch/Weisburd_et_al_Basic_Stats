* Encoding: UTF-8.
/* The first thing you will need to do is replace [directory_name] with the location of the
/* data file that you saved on your computer system. If you are using the Student Version 
/* of SPSS, uncomment (i.e., remove the slash [/] and star [*]) the line with the student data file 
/* (nys_1_student.sav) and remove the line with nys_1.sav listed as the data file.

GET  FILE='[directory_name]nys_1.sav'.
/* GET  FILE='[directory_name]nys_1_student.sav'.

DATASET NAME NYS WINDOW=FRONT.

/*The following command computes descriptive statistics for the variables listed.
DESCRIPTIVES VARIABLES=marijuan hit_stdt beatnotr .
 
/*The following command computes only the measures of central tendency for the variables listed.
FREQUENCIES VARIABLES=hit_stdt sex race_eth
  /FORMAT=NOTABLE
  /STATISTICS=MEAN MEDIAN MODE .

/*Illustration for recoding the beatnotr variable so that values greater than 10 become 10.
RECODE beatnotr (10 thru Highest=10) (ELSE=Copy) INTO newbeatn.
EXECUTE.

/* Reports outliers in the box-and-whiskers and stem-and-left plots.
EXAMINE VARIABLES=hit_tchr
  /PLOT BOXPLOT STEMLEAF
  /COMPARE GROUPS
  /STATISTICS DESCRIPTIVES EXTREME
  /CINTERVAL 95
  /MISSING LISTWISE
  /NOTOTAL.

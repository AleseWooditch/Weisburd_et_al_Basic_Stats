/* The first thing you will need to do is replace [directory_name] with the location of the
/* data file that you saved on your computer system. If you are using the Student Version 
/* of SPSS, uncomment (i.e., remove the slash [/] and star [*]) the line with the student data file 
/* (nys_1_student.sav) and remove the line with nys_1.sav listed as the data file.

GET  FILE='[directory_name]nys_1.sav'.
/* GET  FILE='[directory_name]nys_1_student.sav'.

DATASET NAME NYS WINDOW=FRONT.

/* The following command requests additional measures of dispersion from SPSS.
DESCRIPTIVES VARIABLES=age gpa
  /STATISTICS=MEAN STDDEV VARIANCE RANGE MIN MAX.

/* The following command illustrates how to request quartiles (4 equally spaced groups).
FREQUENCIES VARIABLES=age hit_stdt
  /NTILES=4
  /STATISTICS=STDDEV VARIANCE RANGE MINIMUM MAXIMUM MEAN MEDIAN MODE
  /ORDER=ANALYSIS.

/* The following command illustrates how to request the 10th and 90th percentiles.
FREQUENCIES VARIABLES=age gpa
  /PERCENTILES=10.0 90.0 
  /STATISTICS=STDDEV VARIANCE RANGE MINIMUM MAXIMUM MEAN MEDIAN MODE
  /ORDER=ANALYSIS.


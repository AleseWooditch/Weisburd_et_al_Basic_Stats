* Encoding: UTF-8.
/* The first thing you will need to do is replace [directory_name] with the location of the
/* data file that you saved on your computer system. If you are using the Student Version 
/* of SPSS, uncomment (i.e., remove the slash [/] and star [*]) the line with the student data file 
/* (nys_1_student.sav) and remove the line with nys_1.sav listed as the data file.

GET  FILE='[directory_name]nys_1.sav'.
/* GET  FILE='[directory_name]nys_1_student.sav'.

DATASET NAME NYS WINDOW=FRONT.

/* Simple t-test comparing marijuana use across sex of youth.
T-TEST GROUPS=sex(1 2) 
  /VARIABLES=marijuan .

/*Paired sample t-test comparing mean times hit a teach with mean times hit a parent.
T-TEST PAIRS=hit_prnt WITH hit_tchr (PAIRED)
  /CRITERIA=CI(.9500)
  /MISSING=ANALYSIS.

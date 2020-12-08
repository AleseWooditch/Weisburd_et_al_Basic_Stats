/* The first thing you will need to do is replace [directory_name] with the location of the
/* data file that you saved on your computer system. 

GET  FILE='[directory_name]ex_8_1.sav'.

DATASET NAME ex81 WINDOW=FRONT.

/* The following runs the binomial test under the NPTESTS command.
NPTESTS   /ONESAMPLE TEST (crime) BINOMIAL(TESTVALUE=0.5 SUCCESSCATEGORICAL=LIST(1) ).

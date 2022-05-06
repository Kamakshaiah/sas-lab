/*TTEST ON TIME DATA
data time;
input time @@;
cards;
12 23 31 21 19 13 23 43 12
121 21 23 65 32 12 12 32 102
;
run;

proc ttest h0=80 alpha=0.1;
var time;
run;

proc print data=time;
run;*/

/*TTEST ON GENDER DATA*/

/*title 'comparing group means';
data scores;
input gender $ scores @@;
datalines;

f 75 f 76 f 80 f 77 f 80 f 77 f 73
m 82 m 80 m 85 m 85 m 78 m 87 m 82
;

proc print data=scores;
run;

ods graphics on;
proc ttest data=scores plots(showh0);
class gender;
var scores;
run;
ods graphics off;


/*data flu;
input innoculation $ 1-16 flu $ 17-22 ifcount 25-27;
cards;
Innoculated 	Flu 	150
Innoculated 	No Flu 	200
Not innoculated Flu 	300
Not innoculated No Flu 	250
;
proc print data=flu;
run;

proc freq data=flu;
tables innoculation*flu / chisq measures;
weight ifcount;
run;*/

libname data 'E:\saswork\data'; set data.070214test;
proc print data=070214test; run;

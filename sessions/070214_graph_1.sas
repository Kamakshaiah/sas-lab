/*HOW TO SEE G-DEVICES*/

%*proc gdevice catalog=sashelp.devices;
%*list_all_;
%*run;

%*proc gtestit;
%*run;

/*DEMO ON TEXT*/

/*goptions ftext=centx htext=2;*/

/*proc gslide;

title1 color=red font=50 'this is title 1' ls=10 h=10;
title2 'this is title 2' ls=10;
title3 'this is title 3';
title4 'this is title 4';
title5 'this is title 5';
run;*/

/*proc gslide;
title h=10 c=red f=italic 'Hello World';
run;*/

/*VERTICAL BAR CHARTS*/

/*data fitness;
input AGE WEIGHT RUNTIME RSTPULSE RUNPULSE MAXPULSE OXYGEN GROUP;
cards;
57 73.37 12.63 58 174 176 39.407 2
54 79.38 11.17 62 156 165 46.080 2
52 76.32 9.63 48 164 166 45.441 2
50 70.87 8.92 48 146 155 54.625 2
51 67.25 11.08 48 172 172 45.118 2
54 91.63 12.88 44 168 172 39.203 2
51 73.71 10.47 59 186 188 45.790 2
57 59.08 9.93 49 148 155 50.545 2
49 76.32 9.40 56 186 188 48.673 2
48 61.24 11.50 52 170 176 47.920 2
52 82.78 10 .50 53 170 172 47.467 2
44 73.03 10.13 45 168 168 50.541 1
45 87.66 14.03 56 186 192 37.388 1
45 66.45 11.12 51 176 176 44.754 1
47 79.15 10.60 47 162 164 47.273 1
54 83.12 10.33 50 166 170 51.855 1
49 81.42 8.95 44 180 185 49.156 1
51 69.63 10.95 57 168 172 40.836 1
51 77.91 10.00 48 162 168 46.672 1
48 91.63 10.25 48 162 164 46.774 1
49 73.37 10.08 76 168 168 50.388 1
44 89.47 11.37 62 178 182 44.609 0
40 75.07 10.07 62 185 185 45.313 0
44 85.84 8.65 45 156 168 54.297 0
42 68.15 8.17 40 166 172 59.571 0
38 89.02 9.22 55 178 180 49.874 0
47 77.45 11.63 58 176 176 44.811 0
40 75.98 11.95 70 176 180 45.681 0
43 81.19 10.85 64 162 170 49.091 0
44 81.42 13.08 63 174 176 39.442 0
38 81.87 8.63 48 170 186 60.055 0
;
proc print data=fitness;
run;

/*title h=3 'vertical bar chart';
proc gchart data=fitness;
vbar age /discrete;
run;*/

/*USING PROC FORMAT*/

/*proc format;
value agegrp 	low-29='<30';
				30-39='30-39';
				40-49='40-49';
				50-high='50+';
				.='Missing';
run;

title 'Using format statement';
proc gchart data=fitness;
vbar age /discrete;
vbar3d age /discrete;
run;*/

/*BAR CHART ON RES AND GRP VARIABLES*/

data highway;
input STEERING $ SEATBELT $ SPEED $ STATUS $ COUNT;
cards; 
absent no 0-29 serious 31
absent no 0-29 not 1419
absent no 30-49 serious 191
absent no 30-49 not 2004
absent no 50+ serious 216
absent no 50+ not 1030
absent yes 0-29 serious 6
absent yes 0-29 not 255
absent yes 30-49 serious 14
absent yes 30-49 not 339
absent yes 50+ serious 19
absent yes 50+ not 200
present no 0-29 serious 22
present no 0-29 not 652
present no 30-49 serious 57
present no 30-49 not 928
present no 50+ serious 108
present no 50+ not 515
present yes 0-29 serious 4
present yes 0-29 not 199
present yes 30-49 serious 11
present yes 30-49 not 265
present yes 50+ serious 20
present yes 50+ not 157
;
/*proc print data=highway;
run;*/

goptions htext=1 ftext=swiss hsize=5 vsize=5 boarder;
run;

/*title 'Using TYPE=, SUMVAR= AND REF=';
proc gchart data=highway;
vbar3d speed / type=mean sumvar=count ref=200 400;
run; */

/*title 'Using midpoint and frame';
proc gchart data=highway;
vbar3d speed / type=mean sumvar=count midpoints='50+' '0-29' '30-49';
run;*/

/*title 'Horizontal bar chart';
proc gchart data=highway;
hbar3d speed / type=mean sumvar=count;
run;*/

/*title 'Horizontal bar chart';
proc gchart data=highway;
hbar speed / nostats frame;
run;*/

/*title 'horizontal bar chart';
proc gchart data=highway;
hbar3d speed / nostats frame; type=mean sumvar=count;
run;*/

/*SUBGROUP OPTION*/

/*title 'SUBGROUP option';
PROC gchart data=highway;
hbar speed / frame subgroup=status nostats;
run;*/

/*data mort;
infile 'E:\saswork\mortandwtrhardness.csv';
input country $ mortality wtrhardness;
cards;
proc print data=mort;
run;*/

proc import datafile='E:\saswork\mortandwtrhardness.xlsx';
DBMS=excel out=my.df;
proc print data=my.df;
run;


PROC IMPORT OUT= MY_WORK.car 
            DATAFILE= "E:\saswork\output_univar_1.xls" 
            DBMS=EXCEL5 REPLACE;
     GETNAMES=YES;
RUN;
PROC EXPORT DATA= MY_WORK.CAR 
            OUTFILE= "E:\saswork\car.xls" 
            DBMS=EXCEL REPLACE;
     SHEET="car"; 
RUN;
PROC IMPORT OUT= WORK.sal 
            DATAFILE= "E:\saswork\070214test.xls" 
            DBMS=EXCEL5 REPLACE;
     SHEET="1"; 
     GETNAMES=YES;
RUN;

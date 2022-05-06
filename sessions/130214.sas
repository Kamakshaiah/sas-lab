/*proc import out=work.sort datafile="E:\saswork\data\sort.txt" dbms=csv replace;
getnames=yes;
run;
proc print;
run;*/

/*data one;
input w;
datalines;
12
13
14
15
16
17
18
;
data concat;
merge sort one;
proc print data=concat;
run;*/

proc import out=work.sort datafile="E:\saswork\data\sort.csv" dbms=csv replace;
getnames=yes;
run;

proc import out=work.sort1 datafile="E:\saswork\data\sort1.csv" dbms=csv replace;
getnames=yes;
run;

data conc;
merge work.sort work.sort1;
proc print data=conc;
run;


/*data sort;
infile "E:\saswork\data\sort.csv";
input x 1-2 y 3-4;
cards;
data sort1;
infile "E:\saswork\data\sort1.csv";
input z 1-3;
cards;
data concat;
merge sort sort1;
run;
proc print data=work.concat;
run;

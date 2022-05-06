/*data salary;
input straight;
if 10000 < straight < 15000 then do; gross=straight+1500; satisfaction='Moderate'; productivity='Moderate'; end; else if straight < 5000 then do; gross=straight+1000; satisfaction='low'; productivity='low'; end; else do;  gross=straight+2000; satisfaction='high'; productivity='high'; end; 
cards;
2000
3500
4000
12000
10000
15000
2345
32145
3241
3245
23451
29000
2134
21345
6534
;
proc print data=salary;
where straight<=10000;
var gross satisfaction productivity;
run;*/


/*ods graphics on;
proc freq data=salary;
tables straight*satisfaction / chisq exact norow nocol ;
run;
ods graphics off;

/*proc print data=salary;
  where (gross < 10000);
  var salary;
run;*/
/*proc print data=My_work.test;
where gross <=10000;
var strait satisfaction productivity;
run;*/

/*proc univariate data=Work.salary;
var straight;
*histogram /cfill=gray;
run;*/

/*proc corr data=salary;
var straight gross;
run;*/

/*proc gplot data = salary;
plot straight*gross;
run;
quit;*/

/*proc insight data=salary;
  scatter straight gross satisfaction productivity *  straight gross satisfaction productivity;
run;*/

/*proc reg data=salary;
  model  straight = gross;
plot residual. * predicted. ;
run;*/

/*proc univariate data=salary;
var straight;
histogram / cfill=gray normal kernel (color=red);
run;*/

proc glm data= salary;
  class satisfaction;
  model straight gross = satisfaction/ ss3;
  *contrast '1 vs 2&3' group 2 -1 -1;
  *contrast '2 vs 3' group 0 1 -1;
  *manova h=_all_;
  *manova h=group m=(1 0 1);
run;

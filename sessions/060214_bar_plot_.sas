data test;
input x;
y=x*x;
z=sqrt(x);
p=x+y;
q=z*z+p;
cards;
1
2
3
4
5
6
7
8
9
10
;
proc print data=test;
run;

proc gchart data=test;
vbar q / type=percent;
run;
quit;

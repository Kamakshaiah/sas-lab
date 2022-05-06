/*data one;
input x $ y;
if x eq 'blue' then z=1;
else if x eq 'red' then z=1;
else z=0;
cards;
blue 21
red  32
yell 12
proc print data=one;
run; */

data one;
input x;
if x gt 5 then 
do;
y=1/x;
z=x**2;
end;
else do;
y=0;
z=0;
end;
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
proc print data=one;
run;

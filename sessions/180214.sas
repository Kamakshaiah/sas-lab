data one;
input z y;
datalines;
11 1
22 2
33 3
44 4
55 5
66 6
77 7
88 8
99 9
;
proc print data=one;
run;

data two;
input x $ m p $;
datalines;
A1 1 India
B2 2 Africa
C3 3 Pakistan
D4 4 Afghanistan
E5 5 Uzbekistan
F6 6 Russia
G7 7 Zombia
H8 8 Namibia
I9 9 Bolivia
;
proc print data=two;
run;

data three;
merge one two;
proc print data=three;
run;

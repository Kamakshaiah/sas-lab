data test4;
input x;
if x<12 then do; y='working';  end; else do; y='not working'; end;
cards;
12
10
21
12
10
9
2
1
3
;
proc print data=test4;
run;

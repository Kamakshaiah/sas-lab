PROC EXPORT DATA= WORK.AUTO 
            OUTFILE= "E:\saswork\output_univar_1.xls" 
            DBMS=EXCEL2000 REPLACE;
     SHEET="univariate_var_summary"; 
RUN;

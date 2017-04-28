/********** PRINT HELLO WORLD */ 
/********** Create Database db1 with String 'Hello World' */
data db1;
    ********** Format Variable String as character with lenght 11;
    format STRING $11.;
    STRING="Hello World";
    ********** Output in SAS log;
    put STRING;
    ********** Output in db1;
    output;
run;

title1 "Hello World";
proc print data=db1 noobs;
run;

/********** MACRO HELLO WORLD */ 
%macro Hello(MYWORD);
/********** Create Database db1 with String 'Hello World' */ 
data db1;
    /********** Format Variable String as character with length 40 */ 
    format STRING $40.;
    STRING=&MYWORD;
    /********** Output in SAS log with %put */ 
    %put &MYWORD;
    /********** Output in db1 */ 
    output;
run;

title1 "Hello World";
proc print data=db1 noobs;
run;
%mend Hello;

%Hello("Hello World (generated with SAS Macro)");

/********** MACRO HELLO WORLD WITH LOOP*/ 
* Macro for printing Hello World n-times (and Output in SAS log);
%macro MyLoop(NumLoop=, Output=Y);
    /********** Declare iterator I as local */ 
    %local I;

    /********** Upcase Output */ 
    %let Output=%upcase(&Output);

    /********** If Parameter Output is Y = Yes: */ 
    %if &Output=Y %then %do;
        /********** Loop */ 
        %do I=1 %to &NumLoop;
            %put "Hello World &I"; /********** Output in SAS Log */
        %end;
        %end;
    
    /********** If Parameter Output is not Y */ 
    %else %do;
        %put "Output is not Y"; /********** Output in SAS Log */
    %end;
%mend MyLoop;
 
%MyLoop(NumLoop=8, Output=y);


hello-world
===========

SAS, R, Python

SAS
---

``` sas
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
```

### SAS Macro

``` sas
%macro Hello(MYWORD);
;/********** Create Database db1 with String 'Hello World' */ 
data db1;
    %********** Format Variable String as character with length 40;
    format STRING $40.;
    STRING=&MYWORD;
    %********** Output in SAS log with %put;
    %put &MYWORD;
    %********** Output in db1;
    output;
run;

title1 "Hello World";
proc print data=db1 noobs;
run;
%mend Hello;

%Hello("Hello World (generated with SAS Macro)");
```

### SAS Macro with Loop

``` sas
* Macro for printing Hello World n-times (and Output in SAS log);
%macro MyLoop(NumLoop=, Output=Y);
    %********** Declare iterator as local;
    %local I;

    %********** Upcase Output;
    %let Output=%upcase(&Output);

    %********** If Parameter Output is Y = Yes:;
    %if &Output=Y %then %do;
        %********** Loop;
        %do I=1 %to &NumLoop;
            %put "Hello World &I"; %* Output in SAS Log;
        %end;
        %end;

    %********** If Parameter Output is not Y;
    %else %do;
        %put "Output is not Y"; %* Output in SAS Log;
    %end;
%mend MyLoop;
 
%MyLoop(NumLoop=8, Output=y);

* NOTE: Declare all variables within macro as %local, avoid using %global variables;
* NOTE: Macro parameters are always local to the macro that defines them;
```

R
-

``` r
# Define String
string <- "Hello World"
# print
print(string)
# or
cat(string, "\n")
```

### R Function

``` r
hello <- function(string) {
  cat(string, "\n")  
}

hello("Hello World (generated with R Function)")
```

### R Function with Loop

``` r
# Function for printing Hello World n-times (if Output = TRUE)
hello <- function(NumLoop, Output = TRUE) {
  # Output if variable is TRUE
  if (Output == TRUE) {
     for(i in 1:NumLoop) {
        # Print Hello World
        cat("Hello World", i, "\n")  
     }
  } else {
    cat("Output is not TRUE", "\n")  
  }
}

hello(8, Output = TRUE)
```

Python
------

``` python
string = "Hello World"
print(string)
```

### Python Function

``` python
# Define function hello with parameter string
def hello(string):                       # Function header
    """Prints a string"""                # Description
    
    # Print string
    print(string)                         # Body

# Call hello
hello("Hello World (generated with Python Function)")
```

### Python Function with Loop

``` python
# Define function hello for printing Hello World n-times (if Output = TRUE)
def hello(NumLoop, Output = True):
    """Prints Hello World n-times"""

    # If Output is true
    if Output is True:
       # Loop
       for i in range(NumLoop):
           # Print string
           print("Hello World", i+1)
    else:
       print("Output is not TRUE")

# Call hello
hello(8, Output = True)
```

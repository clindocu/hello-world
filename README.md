
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

hello("Hello World (generated with R function)")
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

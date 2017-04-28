############################################################
# Print Hello world

string = "Hello World"
print(string)

############################################################
# Python Function
# Define function hello with parameter string

def hello(string):                       # Function header
    """Prints a string"""                # Description

    # Print string
    print(string)                        # Body

# Call hello
hello("Hello World (generated with Python Function)")

############################################################
# Python Function with Loop

# Define function hello for printing Hello World n-times (if output = TRUE)
def hello(numloop, output = True):
    """Prints Hello World n-times"""

    # If Output is true
    if output is True:
       # Loop
       for i in range(numloop):
           # Print string
           print("Hello World", i+1)
    else:
       print("Output is not TRUE")

# Call hello
hello(8, output = True)


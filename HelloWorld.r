############################################################
# Define String
string <- "Hello World"
# print
print(string)
# or
cat(string, "\n")

############################################################
# R Function
hello <- function(string) {
  cat(string, "\n")  
}

hello("Hello World (generated with R Function)")

############################################################
# R Function with loop
# Function for printing Hello World n-times (if output = TRUE)
hello <- function(numloop, output = TRUE) {
  # Output if variable is TRUE
  if (output == TRUE) {
    for (i in 1:numloop) {
      # Print Hello World
      cat("Hello World", i, "\n")  
    }
  } else {
    cat("output is not TRUE", "\n")  
  }
}

hello(8, output = TRUE)

#' @title 2_CoreElements.R
#' @description Data Anaytics introductory concepts
#' @author NMCG
#' @bugs None
#' @keywords data types; output vars; operators; type checking; type coercion; in-built, user-defined, and external functions
#' @seealso https://www.tutorialspoint.com/r/r_data_types.htm

# Automatically clear console - the string literal "\014" sends a CTRL + L to the console to clear it
cat("\014")

# Data Types --------------------------------------------------------------

# Integers
year <- 2023

# Floating-points
height <- 1.91

# Logical
is_raining <- TRUE
is_friday <- F

# Character
module <- "Data Analytics"
initials <- 'NMCG'

# Complex
x <- 3i + 4

# Coerce a variable to be stored as an int
kids <- 4L

# Print & Format Vars ---------------------------------------------------------

print(module)
print(paste("The module ", module, "is taught by", initials))

# Mathematical Operators --------------------------------------------------

a <- 10
b <- 12
c <- a ^ b
d <- 10*a + b/2.3

# Modulus
remainder <- 17%%3 # 1
remainder

the_result <- (a*2.5) + (6.8/(10.1 - b)); the_result

# Type Checking (Useful cleaning/validating) -------------------------------

is.numeric(2.5)

is.numeric('2.5')

ages <- c(19, 23, 45, 61) #vector is a collection of instances of same data type
is.vector(ages)

# Type Coercion -----------------------------------------------------------

# Convert string age to a number
age_as_numeric <- as.numeric("32")
age_as_numeric

age_as_str <- as.character(32)
age_as_str

# Control Flow ------------------------------------------------------------

# if, else

# Loops -------------------------------------------------------------------

# for, while

# In-built functions ------------------------------------------------------

# Inbuilt functions (log10, log2, log, exp, abs) - see https://learnetutorials.com/r-programming/built-in-functions

log_test1 = log10(1000)
log_test2 = log2(64)
log_test3 = log(1000, exp(1)) # loge

exp_test1 = exp(1) #exp = e = 2.718
pow_test1 = 2^4
sqrt_test = sqrt(25)

abs_test1 = abs(-10.58)
abs_test2 = abs(-1E6) 
rounded_pi = round(pi, 3)
rounded_pi

# User-defined Function ---------------------------------------------------

AbsDouble <- function(a){
  abs(2*a)
}

y <- AbsDouble(10)
y

Divide <- function(a, b) {
  z <-  a / b
}

res1 <- Divide(100, 25)
res1

res2 <- Divide(b = 25, a = 100)
res2

# Externally-defined Function ---------------------------------------------------

# IMPORTANT - dont forget to set your working directory (see Session/Set Working Directory/To Source File Location)
source("3_ExternalFunctions.R")

# Pass literal values directly into the function
stretched1 <- LinearContrastStretch(5, 0, 10, 20, 30)
print(paste("Ex1 - Stretched value is", stretched1))

# assign values using =
x <- 5
stretched2 <- LinearContrastStretch(value = x, min_val = 0, 
                                    max_val = 10, new_min = 20, new_max = 30)
print(paste("Ex2 - x is stretched from", x, "to", stretched2, "using LinearContrastStretch"))

# Mix literals and assignment using =
stretched3 <- LinearContrastStretch(5, min_val = 0, 
                                    10, 20, new_max = 30)
print(paste("Ex3 - x is stretched from 5 to", stretched3, "using LinearContrastStretch"))

# Assign values OUT OF ORDER using =
x <- 5
stretched4 <- LinearContrastStretch(new_max = 30, new_min = 20, 
                                    value = x, min_val = 0, max_val = 10)
print(paste("Ex4 - x is stretched from", x, "to", stretched4, "using LinearContrastStretch"))

# Another example
a <- -16
b <- 2
log_value1 <- LogAbs(a, b)
print(paste("Ex5 - LogAbs(", a, ",", b, ") is", log_value1))

# Notice how we are again passing arguments out of order
log_value2 <- LogAbs(base = 2, x = -16)
print(paste("Ex6 - LogAbs(-16, 2) is", log_value2))

# Load CSV file -----------------------------------------------------------

# IMPORTANT - dont forget to set your working directory (see Session/Set Working Directory/To Source File Location)
student_data <- read.csv("Data/2023 - Survey - 1.csv")
student_data$Shoe.Size..EU.
hist(student_data$Shoe.Size..EU.)
summary(student_data)

vec_height <- student_data$Height.cm.
range(vec_height)





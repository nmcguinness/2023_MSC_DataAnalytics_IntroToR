
# Data Types --------------------------------------------------------------

# data types - see https://www.tutorialspoint.com/r/r_data_types.htm

#integers
year <- 2023

#floating-points
height <- 1.91

# logical
isRaining <- TRUE
isFriday <- F

# character
module <- "Data Analytics"
initials <- 'NMCG'

# complex
x <- 3i + 4

#coerce a variable to be stored as an int
kids <- 4L


# Print/Show Vars ---------------------------------------------------------


print(module)
module
initials


# Mathematical Operators --------------------------------------------------

a <- 10
b <- 12
c <- a ^ b
d <- 10*a + b/2.3

#modulus
remainder <- 17%%3 # 1
remainder

theResult <- (a*2.5) + (6.8/(10.1 - b)); theResult


# Type Checking (Useful cleaning/validating) -------------------------------

is.numeric(2.5)

is.numeric('2.5')

ages <- c(19, 23, 45, 61) #vector is a collection of instances of same data type
is.vector(ages)


# Type Coercion -----------------------------------------------------------

#convert string age to a number
ageAsNumeric <- as.numeric("32")
ageAsNumeric

ageAsStr <- as.character(32)
ageAsStr


# Control Flow ------------------------------------------------------------

#if, else


# Loops -------------------------------------------------------------------

#for, while


# In-built functions ------------------------------------------------------

#inbuilt functions (log10, log2, log, exp, abs) - see https://learnetutorials.com/r-programming/built-in-functions

logTest1 = log10(1000)
logTest2 = log2(64)
logTest3 = log(1000, exp(1)) # loge

expTest1 = exp(1) #exp = e = 2.718
powTest1 = 2^4
sqrtTest = sqrt(25)

absTest1 = abs(-10.58)
absTest2 = abs(-1E6) 
roundedPi = round(pi, 3)
roundedPi


# User-defined Function ---------------------------------------------------

absDouble <- function(a){
  abs(2*a)
}

y <- absDouble(10)
y













# Q1 (EASY) --------------------------------------------------------------

# Create a vector a containing the numbers 1 to 5.

a <- c(1, 2, 3, 4, 5)

# Q2 (EASY) --------------------------------------------------------------

# Given a vector b <- c(5, 4, 3, 2, 1), compute the sum of vectors a and b.

sum_vec <- a + b

# Q3 (EASY) --------------------------------------------------------------

# Extract the first three elements of the vector a.

subset_a <- a[1:3]

# Q4 (EASY) --------------------------------------------------------------

# From the vector a, find all numbers greater than 3.

greater_than_three <- a[a > 3]

# Q5 (EASY) --------------------------------------------------------------

# Create a new vector that contains the square of each element in vector a.

squared <- a^2

# Q6 (EASY) --------------------------------------------------------------

# Given vectors x <- c(2, 4, 6, 8, 10) and y <- c(1, 3, 5, 9, 11), find elements in x that are less than the corresponding elements in y.

less_than_y <- x[x < y]

# Q7 (INTERMEDIATE) --------------------------------------------------------------

# Identify the indices of the vector v2 <- c(4, 7, 10, 13, 16) where values are odd.

odd_indices <- which(v2 %% 2 == 1)

# Q8 (INTERMEDIATE) --------------------------------------------------------------

# Given a vector v1 <- c(2, 5, 8, 11, 14), replace all values greater than 10 with the number 999.

v1[v1 > 10] <- 999

# Q9 (INTERMEDIATE) --------------------------------------------------------------

# Compute the mean of the values in the vector v3 <- c(12, 45, 67, 89, 100) that are greater than 20.

mean_value <- mean(v3[v3 > 20])

# Q10 (INTERMEDIATE) --------------------------------------------------------------

# Given the vector below, create a new vector that contains the difference between each element and the average of all elements in match_wins

match_wins <- c(1, 4, 7, 10, 13)

#TODO Add your code here...

# Q11 (HARD) --------------------------------------------------------------

# Given a vector below, write a function named find_adj_diff that:

# - Computes the differences between each adjacent pair of numbers in the vector.
# - Returns a new vector containing only the differences that are prime numbers.

v <- c(4, 7, 15, 28, 37, 50, 62, 78, 90, 105)

is_prime <- function(n) {
  if (n <= 1) {
    return(FALSE)
  }
  for (i in 2:sqrt(n)) {
    if (n %% i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}

find_adj_diff <- function(v) {
  # Compute the differences between adjacent pairs
  differences <- diff(v)
  
  # Filter differences that are prime numbers
  prime_diffs <- differences[sapply(differences, is_prime)]
  
  return(prime_diffs)
}

# Test the function with the provided vector
result <- find_adj_diff(v)
print(result)


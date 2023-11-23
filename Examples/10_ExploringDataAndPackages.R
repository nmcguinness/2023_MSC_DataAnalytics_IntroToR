#' @title 9_ExploringDataAndPackages.R
#' @description Using R packages to explore and plot data
#' @author NMCG
#' @bugs None
#' @keywords pacman, esquisse

# Set the seed for reproducibility
set.seed(123)

# Generate a sample of normally distributed data
data <- rnorm(50000, mean = 0, sd = 1)

# Sort the data in ascending order
sorted_data <- sort(data)

# Generate the cumulative distribution function (CDF) values
cdf_values <- pnorm(sorted_data)

# Create a cumulative distribution plothttp://127.0.0.1:45685/graphics/8080d210-aad5-4313-b7e7-bf162abe79ac.png
plot(sorted_data, cdf_values, type = "l", col = "blue",
     xlab = "Data Values", ylab = "Cumulative Probability",
     main = "Cumulative Distribution Plot of Normally Distributed Data")

# Add a reference line for the theoretical normal distribution
#curve(pnorm(x), add = TRUE, col = "red", lty = 2)


lines(density(data), col = "red", lwd = 2)

hist(data)

probability <- pnorm(1.96)
print(probability)

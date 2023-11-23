#' @title 9_TestingForNormality.R
#' @description Outlining 3 methods for determining normality of numerical data
#' @author NMCG
#' @bugs None
#' @keywords histogram, qqplot, Shapiro-Wilk
#' @seealso https://www.statology.org/test-for-normality-in-r/
#' @seealso https://www.datamentor.io/r-programming/if-else-statement
#' @seealso https://www.statisticshowto.com/q-q-plots/

cat("\014")

# Set descriptive statistics for our vector of high scores
N <- 200
mn <- 210
std_dev <- 20

# Randomize the high scores using system time
set.seed(Sys.time())

# Generate a random Normal distribution of high scores with 99% of players in the range [150, 270] (i.e. 6 sigma or -3xSD on left and +3xSD on right of the mean)
high_scores <-  rnorm(N, mean = mn, sd = std_dev)

# Try using an Exponential distribution instead of a random normal distribution (see that Shapiro-Wilk no longer reports normality)
# high_scores <- rexp(N, rate = 0.1)

# Try using a Poisson distribution instead of a random normal distribution (see that Shapiro-Wilk no longer reports normality)
# high_scores <- rpois(N, lambda = 5) 

# Print scores
high_scores 

# Now let us perform THREE tests for Normality

# 1. Visual inspection - Histogram
hist(high_scores)
# comment - modality, symmetry, skewness

# 2. Visual inspection - QQ-Plot - https://www.statisticshowto.com/q-q-plots/
qqnorm(high_scores)
qqline(high_scores)

# 3. Descriptive Statistic - Shapiro-Wilk - "The null hypothesis of the Shapiro-Wilk test is that the population is normally distributed. If the p-value associated with the test is below a chosen significance level (e.g., 0.05), then the null hypothesis is rejected, suggesting that the data does not follow a normal distribution."
result_sw <- shapiro.test(high_scores)
result_sw

print(paste("A",result_sw$method, "was conducted on the data."))

# R if else Statement - https://www.datamentor.io/r-programming/if-else-statement
if(result_sw$p.value < 0.05)
{
  print(paste("From the output obtained we can not assume normality as the p-value of", round(result_sw$p.value, 4), "is less than 0.05"))
} else #note in R we need to put the else as shown (i.e. immediately after the { bracket) and not on a new line (as we can in C, C++, C#)
{ 
  print(paste("From the output obtained we can assume normality as the p-value of", round(result_sw$p.value, 4), "is greater than 0.05"))
}


# 4. Descriptive Statistic - Anderson-Darling

if(!require("nortest"))
  install.packages("nortest")
library(nortest)

result_ad <- ad.test(high_scores)
result_ad

print(paste("A",result_ad$method, "was conducted on the data."))

# R if else Statement - https://www.datamentor.io/r-programming/if-else-statement
if(result_ad$p.value < 0.05)
{
  print(paste("From the output obtained we can not assume normality as the p-value of", round(result_ad$p.value, 4), "is less than 0.05"))
} else #note in R we need to put the else as shown (i.e. immediately after the { bracket) and not on a new line (as we can in C, C++, C#)
{ 
  print(paste("From the output obtained we can assume normality as the p-value of", round(result_ad$p.value, 4), "is greater than 0.05"))
}









# fake_scores <- c(190, 190, 205, 185, 180, 220, 250)
# a <- mean(fake_scores)
# a
# 
# b <- sd(fake_scores)
# b
# 
# ideal_fake_scores <- rnorm(7, a, b)
# ideal_fake_scores
# 
# 
# hist(fake_scores, main = "Fake")
# hist(ideal_fake_scores, main = "Ideal")
# 
# #z <- (actual - mean)/std
# 
# -1 <- (actual - 205)/24
# -24 <- actual - 205
# actual <- 181








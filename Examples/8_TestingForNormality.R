#' @title 8_TestingForNormality.R
#' @description Outlining 3 methods for determining normality of numerical data
#' @author NMCG
#' @bugs None
#' @keywords histogram, qqplot, Shapiro-Wilk
#' @seealso https://www.r-bloggers.com/2019/08/shapiro-wilk-test-for-normality-in-r/

set.seed(Sys.time())
N <- 100
mn <- 210
stdev <- 20
# 99% of Tetris players are in the range [150, 270]
high_scores <- rnorm(N, mean = mn, sd = stdev)
#high_scores <- rnorm(N, 100, 20)

high_scores

# 1. Visual inspection - Histogram
hist(high_scores)
# comment - modality, symmetry, skewness

#2. QQ-Plot
qqnorm(high_scores)
qqline(high_scores)

#3. Shapiro-Wilk - "the test rejects the hypothesis of normality when the p-value is less than or equal to 0.05"
result_sw <- shapiro.test(high_scores)
result_sw




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








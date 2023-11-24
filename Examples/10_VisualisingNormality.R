#' @title 10_VisualizingNormality.R
#' @description Visualising normality with a Cumulative Distribution Function
#' @author NMCG
#' @bugs None
#' @keywords CDF
#' @seealso 

# "A Cumulative Density Function (CDF) is a mathematical function that 
# describes the probability that a random variable takes on a value less 
# than or equal to a given point. In the context of a normal distribution, 
# the CDF provides the probability that a variable from that distribution 
# is less than or equal to a specific value. It essentially gives the 
# cumulative probability up to a certain point in the distribution, 
# offering insights into the likelihood of observing a numeric value 
# within the distribution".

# In this example we generate some randomly distributed float-point values
# and compare the CDF for this data (blue) to the ideal CDF (red dot) for a sample
# with the same mean and standard deviation

# Obviously, since both are generated using in-built random functions in R
# (i.e. rnorm() and pnorm()) then both plots will align as long as the
# number of samples (n) is large.

# clear any old output
cat("\014")

# randomise each run using system time
set.seed(Sys.time())

# change the number of samples (i.e. people asked) and see how to changes the histogram (in green)
n = 1000

# ask sample (n) of people to pick a floating-point number from -4 to +4 (i.e. +/- 4 standard devs)
# yes, I know it's a strange "ask" but think of these values as representing our Tetris game high score that is in the range [150, 270]
sample_data <- rnorm(n, mean = 0, sd = 1)

# sort the values you get
sorted_sample_data <- sort(sample_data)

# what are the sorted set of probablilities of seeing this number or less?
prob_values_sample_data <- pnorm(sorted_sample_data)

# plot the original number vs the probabilities 
plot(sorted_sample_data, prob_values_sample_data, type = "l", col = "blue",
     xlab = "Data Values", ylab = "Cumulative Probability",
     main = "Cumulative Distribution Plot of Sample Data vs Ideal")

# what does the ideal CDF look like (i.e. for an ideally normally distributed set of values in range -4 to +4)? 
curve(pnorm(x), add = TRUE, col = "red",
      type = "p")

# lets add a histogram of our original random numbers
lines(density(sample_data), col = "green", lwd= 2)

legend("topleft", legend = c("CDF (Original values)", 
                             "CDF (Ideal normal distribution)", 
                             "Histogram (original value"), 
                              col = c("blue", "red", "green"), 
                              lwd = 2, bty = "n")



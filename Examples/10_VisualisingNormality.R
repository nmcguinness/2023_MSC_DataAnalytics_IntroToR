#' @title 10_VisualizingNormality.R
#' @description Visualising normality with a Cumulative Distribution Function
#' @author NMCG
#' @bugs None
#' @keywords CDF
#' @seealso 

set.seed(456)

# ask 100 people to pick a floating-point number from -4 to +4 (i.e. +/- 4 standard devs)
# yes, I know it's a strange "ask" but think of these values as representing our Tetris game high score that is in the range [150, 270]
data <- rnorm(100, mean = 0, sd = 1)

# sort the values you get
sort_data <- sort(data)

# what are the sorted set of probablilities of seeing this number or less?
prob_values <- pnorm(sort_data)

# plot the original number vs the probabilities 
plot(sort_data, prob_values, type = "l", col = "blue")

# what does the ideal CDF look like (i.e. for an ideally normally distributed set of values in range -4 to +4)? 
curve(pnorm(x), add = TRUE, col = "red",
      type = "p")

# lets add a histogram of our original random numbers
lines(density(data), col = "green", lwd= 2)




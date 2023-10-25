#' @title 1_GraphingSomething.R
#' @description Intro to basic R commands
#' @author NMCG
#' @bugs None
#' @keywords viewing in-built data, using summary, str, names, head and tail, basic plots
#' @seealso https://rpubs.com/uwaterloodatateam/r-programming-reference
#' @seealso https://www.datacamp.com/tutorial/r-studio-tutorial

# Automatically clear console - the string literal "\014" sends a CTRL + L to the console to clear it
cat("\014")

# Viewing in-built datasets - you will probably want to comment this out later!
data()

# Assigning variable values
x <- 20

# To view the variable just type its name
x

# Or use print
print(x)

# Or use paste to make up a string combining variables and literals
print(paste("The value of x is", x))

# Viewing the in-built chickwts dataset
chickwts

# Showing the column names for chickwts dataset
names(chickwts)

# Showing the structure of the chickwts dataset
str(chickwts)

# Viewing the first (4) and last (10) rows of dataset
head(chickwts, n = 4)
tail(chickwts, n = 10)

# Show descriptive statistics for dataset
summary(chickwts)

# Generating some basic plots using dataset
stripchart(chickwts$weight, main="Some title", pch = 21)

hist(chickwts$weight, main="Frequency of weights",
     xlab = "weight",
     ylab = "frequency",
     col = "orange")

boxplot(chickwts$weight~chickwts$feed,
        main = "something",
        col = rgb(0.6, 0.5, 0))






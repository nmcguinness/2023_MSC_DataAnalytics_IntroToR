#' @title 7_UsingPipeOperator.R
#' @description Using the pip operator (%>%) to chain functions vs using nested functions
#' @author NMCG
#' @bugs None
#' @keywords magrittr
#' @seealso https://www.tutorialspoint.com/r/r_vectors.htm
#' @seealso https://www.geeksforgeeks.org/magrittr-package-in-r-programming/

# Automatically clear console - the string literal "\014" sends a CTRL + L to the console to clear it
cat("\014")

# Load magrittr for %>% 
if(!require("magrittr")) 
  install.packages("magrittr")
library(magrittr)

# Numeric - Arithmetic operations on numeric data -----------------------

# what is a pipe? An infix operator








age <- 36
mean_age <- 32

# Apply a sequence of in-built functions to a numeric variable
result <- age %>%
  `-`(mean_age) %>%
  `^`(2)

print(result)

# Vector - Arithmetic operations on a vector -----------------------

# Create a sample vector
some_data <- c(5, 8, 10, 3, 7, 12, 1)

# Chain operations using pipe operator
result <- some_data %>%
  `-`(5) %>%      # Subtract a constant (5 in this case)
  `^`(2) %>%      # Square each element
  .[. > 10] %>%   # Filter out values below 10
  mean()

# What about user-defined functions?

SomeTransform <- function(value) {
  x <- (value - 10)/5
}

ages <- c(12, 34, 32, 45)

results <- ages %>% SomeTransform()





# Compute the mean

print(result)


# Dataframe 1 - Arithmetic operations on a dataframe -----------------------

# Used for the mutate() function below
if(!require("dplyr")) 
  install.packages("dplyr")
library(dplyr)


# Create a simple dataframe
df <- data.frame(
  Student = c("Ana", "Bob", "Ciara", "Denise", "Erik"),
  Score = c(95, 45, 78, 85, 55)
)

# Use the pipe operator to chain functions
result <- df %>%
  filter(Score >= 50) %>%
  arrange(desc(Score)) %>%
  mutate(Grade = case_when(
    Score >= 80 ~ "A",
    Score >= 60 & Score < 80 ~ "B",
    TRUE ~ "C"
  ))

print(result)

# Dataframe 2 - Arithmetic operations on a dataframe -----------------------

# Create a dataframe with game information
games_df <- data.frame(
  Title = c("Red Dead Redemption 2", "The Legend of Zelda: Breath of the Wild", "God of War", "The Witcher 3: Wild Hunt", "Super Mario Odyssey", "Final Fantasy XV", "Assassin's Creed Valhalla", "Doom Eternal"),
  Year = c(2018, 2017, 2018, 2015, 2017, 2016, 2020, 2020),
  Platform = c("PS4", "Switch", "PS4", "PC", "Switch", "PS4", "PS5", "PC"),
  UserRating = c(4.8, 4.9, 4.7, 4.5, 4.6, 4.2, 4.4, 4.3)
)

# Use the pipe operator to chain functions
result <- games_df %>%
  filter(Year > 2015) %>%
  group_by(Platform) %>%
  summarise(AvgRating = mean(UserRating)) %>%
  filter(AvgRating > 4) %>%
  arrange(desc(AvgRating)) %>%
  head(3)

# Extra - Some different formats for printing tables (knitr, tibble) -----------------------

# Load knitr to allow us to print "pretty" tables
if(!require("knitr")) 
  install.packages("knitr")
library(knitr)

kable(result)

# Load tibble to allow us to print "pretty" tables
if(!require("tibble")) 
  install.packages("tibble")
library(tibble)

result_tibble = as_tibble(result)
result_tibble




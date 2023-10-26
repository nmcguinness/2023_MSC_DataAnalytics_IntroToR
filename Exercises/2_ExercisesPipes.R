# Load magrittr for %>% 
if(!require("magrittr")) 
  install.packages("magrittr")

# Q1 (EASY) --------------------------------------------------------------

# Given a vector of integers, use the pipe operator to:
# - Subtract 3 from each value in the vector.
# - Square each resulting value.
# - Compute the sum of the squared values.

#TODO Add your code here...



# Q2 (EASY) --------------------------------------------------------------

# Given a vector of integers, use the pipe operator to:
# - Filter out negative values.
# - Compute the product of all remaining positive values.

#TODO Add your code here...



# Q3 (EASY) --------------------------------------------------------------

# You have a vector of random numbers between 0 and 1. Using the pipe operator:
# - Filter out values less than 0.3 and greater than 0.7.
# - Multiply the remaining values by 100.
# - Compute the median of the multiplied values.

#TODO Add your code here...



# Q4 (EASY) --------------------------------------------------------------

# Given a vector of numbers, use the pipe operator to:
# - Filter out even values.
# - Compute the standard deviation of the remaining odd values.

#TODO Add your code here...

# Q5 (INTERMEDIATE) --------------------------------------------------------------

# Given the dataframe below, use the pipe operator and thte dplyr package to:
# - Write a custom function to filter by age/salary
# - Select any 2 columns of data
# - Sort by 1 of the columns (ASC or DESC)

# Create a sample data frame
data <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David", "Eve"),
  Age = c(25, 30, 35, 40, 45),
  Salary = c(50000, 55000, 60000, 65000, 70000)
)


# Q6 (INTERMEDIATE) --------------------------------------------------------------

# Given the dataframe below, use the pipe operator and thte dplyr package to:
# - Filter out games older than a specific year
# - Group games by platform
# - Add an average rating column which is the mean of all user ratings
# - Filter average ratings less than a specific value
# - Sort by average rating
# - Show the top 4 results

# Create a dataframe with game information
games_df <- data.frame(
  Title = c("Red Dead Redemption 2", "The Legend of Zelda: Breath of the Wild", "God of War", "The Witcher 3: Wild Hunt", "Super Mario Odyssey", "Final Fantasy XV", "Assassin's Creed Valhalla", "Doom Eternal"),
  Year = c(2018, 2017, 2018, 2015, 2017, 2016, 2020, 2020),
  Platform = c("PS4", "Switch", "PS4", "PC", "Switch", "PS4", "PS5", "PC"),
  UserRating = c(4.8, 4.9, 4.7, 4.5, 4.6, 4.2, 4.4, 4.3)
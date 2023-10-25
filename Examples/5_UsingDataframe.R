#' @title 5_UsingDataframe.R
#' @description Creating, accessing, transforming, and manipulating dataframes
#' @author NMCG
#' @bugs None
#' @keywords create, summarise, extract, expand
#' @seealso https://www.tutorialspoint.com/r/r_data_frames.htm


if(!require("knitr"))
  install.packages("knitr")
library(knitr)

# Creating a dataframe ----------------------------------------------------------

animation_df <- data.frame(
  Movie = c("Shrek", "Up", "Jungle Book", "Aladdin"),
  Director = c("John Doe", "Jane Smith", "Alice Brown", "Bob White"),
  ReleaseYear = c(2020, 2021, 2019, 2022),
  BudgetMillions = c(150, 200, 180, 210),
  BoxOfficeMillions = c(500, 650, 550, NA)
)

print("Initial dataframe:")
print(animation_df)

# Accessing elements of a dataframe ----------------------------------------------------------

print("Accessing the 'Movie' column:")
print(animation_df$Movie)

print("Accessing the first row:")
print(animation_df[1,])

# Adding and removing columns ----------------------------------------------------------

animation_df$DurationMinutes <- c(90, 100, 95, 105)
print("After adding 'DurationMinutes' column:")
print(animation_df)

animation_df$DurationMinutes <- NULL
print("After removing 'DurationMinutes' column:")
print(animation_df)

# Adding and removing rows ----------------------------------------------------------

new_movie <- data.frame(Movie="Virtual Voyage", Director="Gary Green", ReleaseYear=2023, BudgetMillions=220, BoxOfficeMillions=NA)
animation_df <- rbind(animation_df, new_movie)
print("After adding a new movie:")
print(animation_df)

animation_df <- animation_df[-5,]
print("After removing the last movie:")
print(animation_df)

# Basic operations on dataframe columns ----------------------------------------------------------

animation_df$ProfitMillions <- animation_df$BoxOfficeMillions - animation_df$BudgetMillions
print("After calculating profit for each movie:")
print(animation_df)

# Filtering rows based on conditions ----------------------------------------------------------

movies_after_2020 <- animation_df[animation_df$ReleaseYear > 2020,]
print("Movies released after 2020:")
print(movies_after_2020)

# Sorting a dataframe ----------------------------------------------------------

sorted_by_profit <- animation_df[order(animation_df$ProfitMillions, decreasing = TRUE), ]
print("Movies sorted by profit in descending order:")
print(sorted_by_profit)

# Applying a function to dataframe columns ----------------------------------------------------------

animation_df$ProfitabilityRatio <- sapply(animation_df$ProfitMillions, function(x) if(!is.na(x)) x/100 else NA)
print("After calculating profitability ratio (Profit/100):")
print(animation_df)

# Merging dataframes ----------------------------------------------------------

ratings_df <- data.frame(
  Movie = c("Shrek", "Up", "Jungle Book", "Aladdin"),
  IMDBRating = c(7.5, 8.3, 7.0, 8.0)
)

merged_df <- merge(animation_df, ratings_df, by="Movie")
print("After merging with ratings dataframe:")
print(merged_df)

# Aggregating data using aggregate() ----------------------------------------------------------

avg_budget_by_year <- aggregate(BudgetMillions ~ ReleaseYear, data=animation_df, FUN=mean)
print("Average budget by release year:")
print(avg_budget_by_year)

# Using subset() for filtering ----------------------------------------------------------

high_rated_movies <- subset(merged_df, IMDBRating >= 8.0)
print("Highly rated movies (IMDB Rating >= 8.0):")
print(high_rated_movies)

# Using transform() for modifying columns ----------------------------------------------------------

merged_df <- transform(merged_df, BudgetInBillions = BudgetMillions / 1000)
print("Budget in billions:")
print(merged_df)

# Finding unique values with unique() ----------------------------------------------------------

unique_directors <- unique(animation_df$Director)
print("Unique directors in the dataframe:")
print(unique_directors)

# Getting summary statistics with summary() ----------------------------------------------------------

print("Summary statistics:")
print(summary(animation_df))

# Handling missing values with na.omit() and is.na() ----------------------------------------------------------

print("Movies with missing box office data:")
print(animation_df[is.na(animation_df$BoxOfficeMillions),])

cleaned_df <- na.omit(animation_df)
print("Dataframe after omitting rows with missing values:")
print(cleaned_df)

# Finding column-wise maximums and minimums ---------------------------------------------------------- 

max_budget <- max(animation_df$BudgetMillions, na.rm = TRUE)
min_budget <- min(animation_df$BudgetMillions, na.rm = TRUE)
print(paste("Max Budget:", max_budget))
print(paste("Min Budget:", min_budget))

# Using duplicated() to find duplicate rows ----------------------------------------------------------

animation_df$duplicated_row <- duplicated(animation_df)
print("Dataframe with duplicated row information:")
print(animation_df)

# Using t() to transpose the dataframe ----------------------------------------------------------

transposed_df <- as.data.frame(t(animation_df[1, -ncol(animation_df)])) # Transpose the first row (excluding the 'duplicated_row' column)
print("Transposed first row:")
print(transposed_df)

# Group-wise operations using tapply() ----------------------------------------------------------

avg_budget_by_year <- tapply(animation_df$BudgetMillions, animation_df$ReleaseYear, mean)
print("Average budget by release year using tapply():")
print(avg_budget_by_year)

# Using split() to split data by factors ----------------------------------------------------------

split_by_year <- split(animation_df, animation_df$ReleaseYear)
print("Dataframe split by release year:")
print(split_by_year)
#' @title 4_UsingVector.R
#' @description Creating, accessing, transforming, subsetting and applying in-built functions to a vector 
#' @author NMCG
#' @bugs None
#' @keywords vector, subset, sort, sample, element-wise operations
#' @seealso https://www.tutorialspoint.com/r/r_vectors.htm



# Automatically clear console - the string literal "\014" sends a CTRL + L to the console to clear it
cat("\014")

# Instantiating a Vector ----------------------------------------------------------

#  A numeric value for each level
level_numbers <- 1:10

# Player scores from ten rounds of a game
player_scores <- c(150, 200, 180, 220, 170, 190, 210, 230, 200, 215)

# Names of some game levels
levels <- c("Grassy Plains", "Misty Mountains", "Arid Desert", "Icy Tundra", "Volcanic Island", "Lava Lair", "Ocean Abyss", "Sky Castle", "Dark Dungeon", "Final Fortress")

# Checkpoints reached by player (TRUE/FALSE)
checkpoints <- c(TRUE, TRUE, FALSE, TRUE, TRUE, FALSE, TRUE, FALSE, TRUE, TRUE)

# Print vectors ----------------------------------------------------------
print(level_numbers)
print(player_scores)
print(levels)
print(checkpoints)

for(i in 1:length(levels))
{
 # print(i)
  print(levels[i])
}

# Accessing elements of a vector by index ----------------------------------------------------------

print(levels[7])  # seventh level
print(player_scores[c(1, 6, 10)])  # scores from first, sixth, and tenth rounds

# Accessing values using [] and Subsetting --------------------------------------------------

player_names <-  c('alan','bea','ciara', 'dave', 'erica') 

# square bracket notation to modify a vector
player_names[2] <- "beatrix"
player_names

# square bracket notation to access
name <- player_names[2]
name

# using a negative index to exclude a value
excl_name <- player_names[-2]
excl_name

# using a vector with square bracket notation to access subset range
some_names1 <- player_names[c(2,4)]
some_names1

# using a vector and colon operator with square bracket notation to access subset range
some_names2 <- player_names[c(2:4)]
some_names2

# using a vector and negative to exlude a range of values
some_names3 <- player_names[-c(1,2)]
some_names3

# Modify elements of a vector ----------------------------------------------------------

# Update scores for the second and ninth rounds
player_scores[c(2, 9)] <- c(205, 215)

# Rename the third and eighth levels
levels[c(3, 8)] <- c("Dusty Dunes", "Cloud Kingdom")
print(player_scores)
print(levels)

# Vectorized operations ----------------------------------------------------------

# Award bonus points for each round
bonus_points <- c(10, 5, 10, 5, 10, 5, 10, 5, 10, 5)
updated_scores <- player_scores + bonus_points
print(updated_scores)

# Score difference between two players
player2_scores <- c(155, 195, 175, 215, 165, 185, 205, 225, 195, 210)
score_difference <- player_scores - player2_scores
print(score_difference)

# Useful functions with vectors ----------------------------------------------------------

print(length(levels))        # Number of game levels
print(sum(player_scores))    # Total score accumulated by player
print(range(player_scores))  # Range of scores (min and max)

# Find unique scores
unique_scores <- unique(player_scores)
print("Unique scores:")
print(unique_scores)

# Basic Statistical Functions ----------------------------------------------------------

# Mean of scores
mn <- mean(player_scores)
print(paste("Mean of player scores:", mn))

# Median of scores
md <- median(player_scores)
print(paste("Median of player scores:", md))

# Variance of scores
variance <- var(player_scores)
print(paste("Variance of player scores:", variance))

# Standard deviation of scores
std_dev <- sd(player_scores)
print(paste("Standard deviation of player scores:", std_dev))

# Quantiles of scores
quantiles <- quantile(player_scores, 0.75)
print("Quantiles of player scores:")
print(quantiles)

iqr <- quantile(player_scores, 0.75) - quantile(player_scores, 0.5)
print(iqr)

boxplot(player_scores)

# Sequences ----------------------------------------------------------

# Generate a sequence of game rounds
rounds <- seq(1, 20, by=2)   # Odd-numbered rounds
print(rounds)

# Generate a sequence of difficulty levels
difficulty_levels <- seq(0.5, 5, length.out=10) # from 0.5 to 5
print(difficulty_levels)

# Repetitions ----------------------------------------------------------

# Generate a default player life count for ten players
life_counts <- rep(3, times=10)
print(life_counts)

# Repeat level names to demonstrate a repeating pattern
repeated_levels <- rep(levels, each=2)  # Each level name is repeated twice
print(repeated_levels)

job_split <- rep(c("job", "no job"), each = c(35, 13))
job_split

# Filtering using logical conditions ----------------------------------------------------------

# Get scores greater than 200 and odd
high_scores <- player_scores[player_scores > 200 & player_scores%%2 == 1]
print(high_scores)

# Get levels that do not have a checkpoint reached
unreached_levels <- levels[!checkpoints]
print(unreached_levels)

# Filter levels that contain the word "Dark"
dark_levels <- levels[grep("un", levels)]
print(dark_levels)

# position in vector where we find matches
print(grep("un", levels))

# Checking conditions on vectors ----------------------------------------------------------

# Check if all player_scores are above 100
all_above_100 <- all((player_scores > 100))
print(paste("Are all scores above 100?", all_above_100))

# Check if any player_scores is above 220
any_above_220 <- any(player_scores > 220)
print(paste("Is any score above 220?", any_above_220))

# Applying a function over a vector using `sapply` ----------------------------------------------------------

# Calculate the score as a percentage of the maximum score for each round
percentage_scores <- sapply(player_scores, 
             function(score) (score / max(player_scores)) * 100)
print("Percentage scores:")
print(percentage_scores)

# Sorting and Ordering ----------------------------------------------------------

# Sorting scores in increasing order
sorted_scores <- sort(player_scores)
print("Sorted scores:")
print(sorted_scores)

# Sorting scores in decreasing order
sorted_scores_desc <- sort(player_scores, decreasing = TRUE)
print("Scores sorted in descending order:")
print(sorted_scores_desc)

# Order scores (returns indices that would sort the vector)
order_scores <- order(player_scores)
print("Indices to sort the scores:")
print(order_scores)

# Custom sort
#TODO: Add sort example


# Set Operations ----------------------------------------------------------

# Two sets of game levels a player has completed and yet to complete
completed_levels <- c("Grassy Plains", "Misty Mountains", "Arid Desert", "Icy Tundra")
yet_to_complete_levels <- c("Icy Tundra", "Volcanic Island", "Lava Lair")

# Union of the two sets
all_levels <- union(completed_levels, yet_to_complete_levels)
print("All levels:")
print(all_levels)

# Intersection of the two sets (common elements)
common_levels <- intersect(completed_levels, yet_to_complete_levels)
print("Common levels:")
print(common_levels)

# Set difference (levels in the first set but not in the second)
remaining_levels <- setdiff(completed_levels, yet_to_complete_levels)
print("Levels completed but not in 'yet to complete' list:")
print(remaining_levels)

sum_set_diff <- union(setdiff(completed_levels, yet_to_complete_levels),
      setdiff(yet_to_complete_levels, completed_levels))

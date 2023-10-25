#' @title 3_UsingVector.R
#' @description Creating, accessing, transforming, and subsetting a vector 
#' @author NMCG
#' @bugs None
#' @keywords vector, subset, sort, sample, element-wise operations
#' @seealso https://www.tutorialspoint.com/r/r_vectors.htm

# automatically clear console - the string literal "\014" sends a CTRL + L to the console to clear it
cat("\014")

# Instantiating a Vector ----------------------------------------------------------

# vector of domestic energy use in a week
energyUsedInKW <- c(1.2, 1.18, 1.21, 1.22, 1.17, 1.22, 1.23)
energyUsedInKW

# vector of character strings
studentNames <- c('alan','bea','ciara', 'dave', 'erica') 
studentNames

# adding labels to the values in a vector which can positively improve readability
meanRainfallBySeason <- c(spring = 262, summer = 251, autumn = 355, winter = 364)
meanRainfallBySeason

# we can access labels using the names() function
names(meanRainfallBySeason)

# if we add labels we can use this label to get/set a value
meanRainfallBySeason["spring"]
meanRainfallBySeason["winter"] <- 365
meanRainfallBySeason

# using colon operator
years <- 1999:2022
years

# using seq()
discountRatesByMonth <- seq(0.45:1, by = 0.05)
discountRatesByMonth

# Vector operations ----------------------------------------------


# Rep, [] and subsetting --------------------------------------------------

#repeat values
repeatTeams <- rep(c("liverpool", "arsenal"), each = 5)
repeatTeams

repeatTeamIDs <- rep(c(1001, 1002, 3005), times = 4)
repeatTeamIDs

repeatTeamAllocations <- rep(c("acc", "sales", "QA"), times = c(3, 5, 2))
repeatTeamAllocations

# c('alan','bea','ciara', 'dave', 'erica') 
# square bracket notation to modify a vector
studentNames[2] <- "beatrix"
studentNames

# square bracket notation to access
aName <- studentNames[2]
aName

# using a negative index to exclude a value
exclName <- studentNames[-2]
exclName

# using a vector with square bracket notation to access subset range
someStudentNames2 <- studentNames[c(2,4)]
someStudentNames2

# using a vector and colon operator with square bracket notation to access subset range
someStudentNames1 <- studentNames[c(2:4)]
someStudentNames1

# using a vector and negative to exlude a range of values
someStudentNames3 <- studentNames[-c(1,2)]
someStudentNames3

# Sequences, filtering ----------------------------------------------------



# Vectorised functions --------------------------------------------------------

quarterlyIncome <- c(18000, 35500, 22000, 11000)

# todo - add element-wise demo code...

quaterlyTaxContribution <- 0.25 * quarterlyIncome; quaterlyTaxContribution

boostIncome <- quarterlyIncome + 100; boostIncome

# when the vector being divided is too short R will re-cycle values
divisorVec <- c(10, 20)

dividedIncome <- quarterlyIncome / divisorVec; dividedIncome

# In-built functions - Length --------------------------------------------------------

#length and sort (natural sort order)
theNamesLength <- length(studentNames)
theNamesLength

for(i in 1:length(studentNames))
{
  print(studentNames[i])
}

# In-built functions - Sort --------------------------------------------------------

sortedEnergyUsedInKW <- sort(energyUsedInKW)
energyUsedInKW

# In-built functions - Sample --------------------------------------------------------

# a random seed to start the random number generator using by sample()
set.seed(56465)

# sample() will use a random number to pick a random name within the vector
shuffledStudentNames <- sample(studentNames)
shuffledStudentNames


#################### VECTOR - SIMPLE INSTANCIATION ###########################



#################### VECTOR - INSTANCIATION WITH LABELS ###########################



#################### VECTOR - INSTANCIATION USING COLON OR SEQ ###########################



#################### VECTOR - INSTANCIATION USING REP ###########################



#################### VECTOR - USING [] ###########################

#c('alan','bea','ciara', 'dave', 'erica') 




#################### VECTOR - SUBSETTING ###########################




#################### VECTOR - LENGTH & SORT ###########################

#length and sort (natural sort order)
theNamesLength <- length(studentNames)
theNamesLength

for(i in 1:length(studentNames))
{
  print(studentNames[i])
}


sortedEnergyUsedInKW <- sort(energyUsedInKW)
energyUsedInKW

#################### VECTOR - SHUFFLE USING SAMPLE ###########################

# a random seed to start the random number generator using by sample()
set.seed(56465)

# sample() will use a random number to pick a random name within the vector
shuffledStudentNames <- sample(studentNames)
shuffledStudentNames

#################### VECTOR - ELEMENT-WISE OPERATIONS USING FUNCTIONS ###########################

quarterlyIncome <- c(18000, 35500, 22000, 11000)

# todo - add element-wise demo code...

quaterlyTaxContribution <- 0.25 * quarterlyIncome; quaterlyTaxContribution

boostIncome <- quarterlyIncome + 100; boostIncome

# when the vector being divided is too short R will re-cycle values
divisorVec <- c(10, 20)

dividedIncome <- quarterlyIncome / divisorVec; dividedIncome




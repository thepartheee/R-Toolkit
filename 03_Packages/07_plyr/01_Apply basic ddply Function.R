# How to use a basic ddply Library

# Usually ddply takes following 3 Steps
# 1. Split: Break your main data frame into smaller subsets based on a grouping variable.
# 2. Apply: Perform some function or transformation on each of these subsets.
# 3. Combine: Merge the results back into a single data frame.

# Import plyr library to use ddply function
library(plyr)

# Use CO2 Dataset from R 
head(CO2)

# Define a simple function to sum uptake values in CO2 df
# Here the df passed to the function is dataframe
sum_uptake <- function(df){
  total = sum(df$uptake)
  return (data.frame(tot=total))
}

# Test without Grouping
sum_uptake(CO2)

# Test Grouping by Plant using ddply
result <- ddply(CO2,  "Plant", .fun=sum_uptake)
result 

# Here the ddply taking the input dataframe CO2
# Then Splitting the Data Frame by the Column Plant
# Then Applying the Custom Function to Find the Sum of Uptake on each split (df)
# Then finally combining the result of all subsets into the variable result

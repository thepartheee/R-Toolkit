# File Name: Aggregate Grouping.R
# Author: Parthiban Kannan (theparthee.com)
# Date Created: 31-OCT-2023
#=================================================================

# Change Log
# Version: 1.0.0    Author: Parthiban Kannan  Date: -
# Description: Under Construction
#=================================================================


# Load Data
df <- as.data.frame(HairEyeColor)
head(df)

# 1. Single-Variable Group 
# Average of Frequency Grouped by Hair
# Group by Single Variables
aggregate(
  x=Freq ~ Hair, 
  data=df, 
  FUN=mean)

# 2. Multi-Variable Group 
# Sum of Frequency Grouped by Hair then Eye
# Group by Multiple Variables
aggregate(
  x = Freq ~ Hair+Eye, 
  data = df, 
  FUN = sum)

# 3. Group Conditions 
# Apply Groups by Conditions
aggregate(
  x = Freq ~ Hair, 
  data = df, 
  FUN = sum, 
  subset = (Freq < 10))

# 4. Missing Values 
# Handling Null Values
# default omit - only if entire row is NA
aggregate(
  x = Freq ~ Hair, 
  data = df, 
  FUN = sum, 
  na.action = na.omit)


# 5. DROP 
# As default drop function ignores non-useful combo in groups
data <- data.frame(
  hair = c("Black", "Brown", "Red", "Black", "Brown"),
  eye = c("Blue", "Green", "Blue", "Green", "Blue")
)

data$count <- 1
result <- aggregate(count ~ hair + eye, 
                    data=data, FUN=sum,
                    drop=FALSE)
print(result)
# You can notice that Red & Green combo not available since 
# there is only null result























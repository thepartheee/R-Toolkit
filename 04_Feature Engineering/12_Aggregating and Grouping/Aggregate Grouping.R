# File Name: Aggregate Grouping.R
# Author: Parthiban Kannan (theparthee.com)
# Date Created: 31-OCT-2023
#=================================================================

# Change Log
# Version: 1.0.0    Author: Parthiban Kannan  Date: 03-NOV-2023
# Description: Fundamental implementation of Group By with aggregate Function
#=================================================================

# Load Data
df <- as.data.frame(HairEyeColor)
head(df)

# 1. Group By One Variable
# Average of Frequency Grouped by Hair Feature
aggregate(
  x=Freq ~ Hair, 
  data=df, 
  FUN=mean)

# 2. Group By Multiple Variables 
# Sum of Frequency Grouped by Hair then Eye
aggregate(
  x = Freq ~ Hair+Eye, 
  data = df, 
  FUN = sum)

# 3. Group By Conditions 
# Apply Groups by Conditions
aggregate(
  x = Freq ~ Hair, 
  data = df, 
  FUN = sum, 
  subset = (Freq < 10))

# 4. Missing Values Action
# default is na.omit - only if entire row is NA
# na.pass - just passes the NA values to result
# na.fail - throws error if NA values are there
aggregate(
  x = Freq ~ Hair, 
  data = df, 
  FUN = sum, 
  na.action = na.fail)


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


# Note: We will check out how to Group Time Periods later
# while covering under Time Series Analysis





















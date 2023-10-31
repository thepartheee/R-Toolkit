# File Name: Aggregate Funtions.R
# Author: Parthiban Kannan (theparthee.com)
# Date Created: 31-OCT-2023
#=================================================================

# Change Log
# Version: 1.0.0    Author: Parthiban Kannan  Date: 31-OCT-2023
# Description: Aggregate Functions Implementation on R Programming.
#=================================================================


# Data
df <- as.data.frame(HairEyeColor)
head(df)

# Aggregate Functions

# 1. SUM - Calculate the total of a set values
sum(df$Freq)

# 2. Mean (Average): Computes the average of a set of values 
mean(df$Freq)

# 3. Median: Finds the middle value in a set of ordered values.
median(df$Freq)

# 4. Mode: Identifies the value(s) that appear most frequently in a set.
#install.packages("DescTools")
library(DescTools)
Mode(df$Hair)

# 5. Min: Returns the smallest value from a set.
min(df$Freq)

# 6. Max: Returns the largest value from a set.
max(df$Freq)

# 7. Count: Counts the number of items in a set. 
# It can also count specific occurrences, like the number of non-null items.
length(df$Hair)

# 8. Standard Deviation: 
# Measures the amount of variation or dispersion in a set of values.
sd(df$Freq)


# 9. Variance: Represents the squared variation from the mean. 
# It's the square of the standard deviation.
var(df$Freq)

# 10. Range: The difference between the maximum and minimum values.
range(df$Freq)

# 11. Quantiles / Percentiles: Divides a data set into parts based on percentiles. 
# For instance, the 25th percentile (also known as the first quartile) divides the lowest 25% of the data from the rest.
quantile(df$Freq)


# 12. Product: Multiplies all values in a set.
prod(df$Freq)













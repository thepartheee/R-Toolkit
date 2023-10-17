# Let's have a Vector with Missing Values
heights <- c(181, 179, 151, NA, 187, 168, 159)

# Let's do some Aggregation Functions
# The output for the following will be also NA

mean(heights) # Average
max(heights)  # Maximum
min(heights)  # Minimum
var(heights)  # Variance
sd(heights)  # Standard Deviation

# Let's remove the missing data while aggregating

mean(heights, na.rm = TRUE) # Average
max(heights, na.rm = TRUE)  # Maximum
min(heights, na.rm = TRUE)  # Minimum
var(heights, na.rm = TRUE)  # Variance
sd(heights, na.rm = TRUE)  # Standard Deviation
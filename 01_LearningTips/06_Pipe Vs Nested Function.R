# Take the Square root of x value 
# and then take log of it.

x = 24

# 1. PIPE Function 
# Library to use pipe function (%>%)
library(magrittr) 

x %>% sqrt %>% log

# 2. Nested Function
log(sqrt(x))







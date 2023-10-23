# 1. Apply Function - On Matrix
# Input: Matrix | Output: Matrix

# Let's create a Matrix x
A <- matrix(c(1:9), nrow = 3, ncol = 3)
A

# Use apply to sum of each columns
col_sum <- apply(A, MARGIN = 2, FUN=sum)
col_sum

# FUN -Any function, we are applying sum function
# - Margin - Applying on Columns

# Use apply to sum of each rows
row_sum <- apply(A, MARGIN = 1, FUN=sum)
row_sum

# FUN -Any function, we are applying sum function
# - Margin - Applying on Rows

#===================================================
# 2. lapply Function 
# Input: List | Output: List

values <- list(a = 1:9, b = 2:10)
res_lappy <- lapply(my_list, FUN = sum)
res_lappy

#===================================================

# 3. sapply Function (s -> simplification)
# Input: List | Output: Vector or Matrix or List (Automatic)

res_sapply <- sapply(values, FUN = sum)
res_sapply

#===================================================

# 4. vapply Function
#Input: List or Vector | Output: Specify the Shape of Output

values <- list(a = c(1, 2, 3), b = c(4, 5, 6))
res_vapply1 <- vapply(values, FUN = sum, FUN.VALUE = numeric(1))
res_vapply1

# Getting 1st two elements
values <- list(a = c(1, 2, 3), b = c(4, 5, 6))
res_vapply2 <- vapply(values, FUN = function(x) x[1:2], FUN.VALUE = numeric(2))
res_vapply2


#===================================================

# 5. mapply Function - To apply function on multiple list/vectors
# Input: List/Vector Output: List/Vector

res_mapply <- mapply(sum, 1:3, 4:6, 7:9)
res_mapply

#===================================================

# 6. tapply Function - To Aply function on subset based on some factor

res_tappy <- tapply(1:10, rep(1:2, each = 5), sum)
res_tappy

# Here we have applied sum function on vector 1:10, 
# by splitting into 2 sets having each of 5 elements
# output: 1:5 -> 15 | 6:10 -> 40

#===================================================

# 7. rapply Function - To apply the function on all the nested lists

nested_list <- list(a = list(1, list(5, 8, list(9, 10))), b = list(c(3, 4)), c=(c(1, 4)))
res_rapply <- rapply(nested_list, sum)
res_rapply




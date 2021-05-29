x <- 1:5
y <- c(1, 3, 5, 7, 9)

# Add 10 to each element in x
x + 10
# Multiply each element by constant
10*x

# If 2 vectors are of the same length, we can add/mult corresponding elements
x + y
x - y
x * y
x / y

# Extract/select elements within a vector (STARTS AT INDEX 1)
y[3]
# Extract all elements except for the 3rd
y[-3]
# Extract elements 1 to 3
y[1:3]
# Extract elements 1 and 5
y[c(1, 5)]
# Extract all elements except for 3rd and 5th
y[-c(1, 5)]
# Extract only elements that are less than 6
y[y < 6]

### MATRIX
# If byrow = FALSE, elements are entered in a column-wise fashion
mat <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow=3, byrow = TRUE)
# Extract element
mat[1, 2]
# Extract elements in row 1 and 3 and column 2
mat[c(1, 3), 2]
# Leaving row or col empty extracts it all. Example: all elements in row 2
mat[2,]

# As with vectors, we can perform element-wise operations
mat * 10
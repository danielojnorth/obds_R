#Define a matrix m1 with numbers 1 to 9 in three rows and three columns by column
m1 <- matrix(data = 1:9, nrow = 3, ncol = 3, byrow = FALSE)

# Extract 8 by row and column
m1 [2,3]

#Define a matrix m2 with intergers 1 to 12 in three rows and four columns by row
m2 <- matrix(data= 1L:12L, nrow = 3, ncol = 4, byrow = TRUE)

#Confirm data type is integer
class(m2[1,1])

# Define names for rows and columns of m2
rownames(m2) <- c('row1', 'row2','row3')
colnames(m2) <- c('blue', 'red', 'yellow', 'purple')

# Define array a, with dimensions 4,2,3; with data 1:24
a <- array(data = 1L:24L, dim = c(4,2,3))

# Extract 15 from this array
a[3,2,2]

#Extract matrix of last dimension of array
last_matrix <- a[,,3]

# Define a list l, with 5 items of different data types

l <- list(last_matrix, 'purple', c(TRUE, FALSE), 7L, 8)

# Extract object from position 3 and position 5 of list l, and put in list l2
l2 <- l[c(3,5)]

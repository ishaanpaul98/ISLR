#Creating a matrix and retrieving particular records
A <- matrix(1:16, 4, 4)
A

#Outputting a certain value (row, column)
A[2, 3]

#Outputting a subset of the matrix (rows, columns)
A[c(1, 3), c(2, 4)]

#Outputting a subset by selection a range
A[1:3, 2:4]

#Empty indice after comma means everything
A[1:2, ]

A[, 1:2]

#-ve sign is used to select all values other than the ones mentioned
A[-c(1, 3), ]

#Outputs the dimensions
dim(A)

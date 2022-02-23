#Using <- for assigning a vector
x <- c(1,2,3,4,5)
x

#Using = instead

x = c(1,2,3)
x

#Using the length function
length(x)

#Using ls to view variables in use
ls()

y = 2*x
y
#Using ls and then rm to view and remove a variable respectively
ls()
rm(y)

#To remove all at once
rm(list = ls())

#If we try to view the variable x using ls(), character(0) will be returned
ls()

#Creating a matrix
x <- matrix(data = c(1,2,3,4), nrow = 2, ncol = 2)
x

#To have it added in order
y <- matrix(data = c(1,2,3,4), nrow = 2, ncol = 2, byrow=TRUE)
y

#Using sqrt for squareroot
sqrt(4)

#Using rnorm to generate random normal variables
x <- rnorm(50)
x
y <- x + rnorm(50, mean = 1, sd = .1)
y
#Computing correlation between x and y using cor()
cor(x,y)

#In order to get the same set of random variables, we can set the seed
set.seed(3)
rnorm(50)

#Using some of the methods that we have just learn
set.seed(3)
y <- rnorm(100)
mean(y)
var(y)
sqrt(var(y))
sd(y)

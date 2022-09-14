#importing the auto dataset
Auto <- read.csv("Auto.csv", na.strings = "?", stringsAsFactors = T)

#Plotting using the variables from the dataset
plot(Auto$cylinders, Auto$mpg)

#Using the attach function to make variables from auto turn into variables for R
attach(Auto)

plot(cylinders, mpg)

#Turning cylinders into a qualitative variables
cylinders <- as.factor(cylinders)

#Creating some plots with different arguments
plot(cylinders, mpg, col = "red")

plot(cylinders, mpg, col = "red", varwidth = T)

plot(cylinders, mpg, col = "red", varwidth = T, horizontal = T)

plot(cylinders, mpg, col = "red", varwidth = T, xlab = "cylinders", ylab = "MPG")

#Creating a histogram
hist(mpg)
#col=2 is the same as col = "red"
hist(mpg, col = 2)

hist(mpg, col = 2, breaks = 15)

#Creating scatter plots
pairs(Auto)

pairs(~ mpg + displacement + horsepower + weight + acceleration, data = Auto)

#Using the identify function to find the value of a particular variable for points on the plot
plot(horsepower, mpg)
identify(horsepower, mpg, name)

#Using summary() to get the summary of all the variables
summary(Auto)

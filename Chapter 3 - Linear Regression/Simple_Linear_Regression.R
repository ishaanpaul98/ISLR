library(ISLR2)
library(MASS)
head(Boston)
#The next line will produce an error because the variables are unknown to R
# lm.fit <- lm(medv ~ lsat)
#Letting R know that the variables are being pulled from the Boston dataset help it understand the variables lsat and medv
lm.fit <- lm(medv ~ lstat, data = Boston)
#Attaching the dataset to the files lets R know that variables need to be checked against the Boston dataset
attach(Boston)
lm.fit <- lm(medv ∼ lstat)

#To know more about the lm.fit variable
lm.fit
#To find out more detailed information
summary(lm.fit)

#To find the pieces of information stored in lm
names(lm.fit)
#To see the coefficients
coef(lm.fit)
#To view the confidence interval
confint(lm.fit)

#Giving a value for lstat to get a confidence interval for medv
predict(lm.fit , data.frame(lstat = (c(5, 10, 15))), interval = "confidence")

#Giving a value for lstat to get a prediction for medv
predict(lm.fit , data.frame(lstat = (c(5, 10, 15))), interval = "prediction")

#Create plot for lsat vs medv
plot(lstat , medv)
abline(lm.fit)

#Drawing multiple lines
abline(lm.fit , lwd = 3)
abline(lm.fit , lwd = 3, col = "red")

#Drawing multiple plots with different characteristics
plot(lstat , medv , col = "red")
plot(lstat , medv , pch = 20)
plot(lstat , medv , pch = "+")
plot (1:20 , 1:20, pch = 1:20)

#Dividing the plotting region into a 2x2 window 
par(mfrow = c(2, 2))
plot(lm.fit)

#plotting residuals vs fitted values
plot(predict(lm.fit), residuals(lm.fit))
plot(predict(lm.fit), rstudent(lm.fit))

plot(hatvalues(lm.fit))
which.max(hatvalues(lm.fit))

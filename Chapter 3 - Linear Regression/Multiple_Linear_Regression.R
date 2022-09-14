attach(Boston)
lm.fit <- lm(medv ~ lstat + age , data = Boston)
summary(lm.fit)

#Fitting all variables
lm.fit <- lm(medv ~ ., data = Boston)
summary(lm.fit)

#install.packages('car')
library(car)
#Finding variable inflation rate from car package
vif(lm.fit)

#Fitting all variables but age
lm.fit1 <- lm(medv ~ . - age, data = Boston)
summary(lm.fit1)
#You can use update instead
lm.fit1 <- update(lm.fit , ~ . - age)

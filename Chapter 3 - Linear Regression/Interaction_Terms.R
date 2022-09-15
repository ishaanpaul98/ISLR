#Lstat x age is the interaction terms being added in this case
summary(lm(medv ~ lstat * age , data = Boston))

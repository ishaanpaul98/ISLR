#I is used to square lstat
lm.fit2 <- lm(medv ~ lstat + I(lstat^2))
summary(lm.fit2)

lm.fit <- lm(medv ~ lstat)
#Running the anova hypothesis test
anova(lm.fit , lm.fit2)

par(mfrow = c(2, 2))
plot(lm.fit2)

#Running a polynomial fit
lm.fit5 <- lm(medv ~ poly(lstat , 5))
summary(lm.fit5)

summary(lm(medv ~ log(rm), data = Boston))

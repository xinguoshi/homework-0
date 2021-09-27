# Reference: www.statlearning.com
# Week 10 Lab: Linear Regression
install.packages("MASS")
install.packages("ISLR")
library(MASS)
library(ISLR)

# Simple Linear Regression
# The MASS library contains the Boston  data set, which records medv  (median house value) for 506 neighborhoods around Boston. We will seek to predict medv  using 13 predictors such as rm  (average number of rooms per house), age  (average age of houses), and lstat  (percent of households with low socioeconomic status).
###############################################################################
fix(Boston)
names(Boston)
?Boston
lm.fit=lm(medv~lstat)
lm.fit=lm(medv~lstat,data=Boston)
attach(Boston)
lm.fit=lm(medv~lstat)
lm.fit
summary(lm.fit)
names(lm.fit)
coef(lm.fit)
confint(lm.fit)
predict(lm.fit,data.frame(lstat=(c(5,10,15))), interval="confidence")
predict(lm.fit,data.frame(lstat=(c(5,10,15))), interval="prediction")
plot(lstat,medv)
abline(lm.fit)
abline(lm.fit,lwd=3)
abline(lm.fit,lwd=3,col="red")
plot(lstat,medv,col="red")
plot(lstat,medv,pch=20)
plot(lstat,medv,pch="+")
plot(1:20,1:20,pch=1:20)





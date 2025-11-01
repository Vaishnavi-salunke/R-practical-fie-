# Loading the required package
library(dplyr)
library(caret)

#1 Perform binning on Sepal.Length from iris into categories: Short, Medium, Long
data("iris")
iris$Sepal_Length_category <-cut(iris$Sepal.Length,
                                  breaks = c(-Inf, 5.5, 6.5, Inf),
                                  labels = c("Short", "Medium", "Long"))
table(iris$Sepal_Length_category)

#2 Convert Species column in iris into dummy variables (One-Hot Encoding)
iris_dummy <- dummyVars(" ~ Species", data = iris)
iris_encoded <- data.frame(predict(iris_dummy, newdata = iris))
head(iris_encoded)

# 3 Normalize the mpg column in mtcars dataset
data("mtcars")
mtcars$mpg_normalized <- (mtcars$mpg - min(mtcars$mpg)) /
  (max(mtcars$mpg) - min(mtcars$mpg))
head(mtcars$mpg_normalized)

#4 Standardize the Sepal.Width column in iris
iris$Sepal_Width_zscore <- scale(iris$Sepal.Width)
head(iris$Sepal_Width_zscore)

#5 Create a new feature in mtcars: efficiency = mpg / hp
mtcars$efficiency <- mtcars$mpg / mtcars$hp
head(mtcars$efficiency)

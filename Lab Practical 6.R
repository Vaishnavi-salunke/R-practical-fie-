install.packages("ggplot2")
install.packages("dplyr")
install.packages("GGally")
library(dplyr)
library(ggplot2)
library(GGally)

# 1. Load required datasets
data("mtcars")
data("airquality")
data("iris")

# 2. Histogram of mpg from mtcars
ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(bins = 15, fill = "lightblue", color = "black") +
  labs(title = "Histogram of MPG", x = "Miles per Gallon (mpg)", y = "Frequency")

# 3. Scatterplot of hp vs wt from mtcars
ggplot(mtcars, aes(x = wt, y = hp)) +
  geom_point(color = "darkred", size = 3) +
  labs(title = "Scatterplot of Horsepower vs Weight", x = "Weight", y = "Horsepower")

# 4. Boxplot of Ozone values from airquality dataset
ggplot(airquality, aes(y = Ozone)) +
  geom_boxplot(fill = "lightgreen", color = "black") +
  labs(title = "Boxplot of Ozone Values", y = "Ozone")

# 5. Correlation between Sepal.Length and Sepal.Width in iris
cor(iris$Sepal.Length, iris$Sepal.Width)

# 6. Pair plot of the first four columns of mtcars
ggpairs(mtcars[, 1:4])

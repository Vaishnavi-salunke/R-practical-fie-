library(dplyr)
library(ggplot2)

#1 Regression model predicting Petal.Length from Sepal.Length in iris
data("iris")

# Simple Linear Regression
model1 <- lm(Petal.Length ~ Sepal.Length, data = iris)
summary(model1)

# Plot regression line
ggplot(iris, aes(x = Sepal.Length, y = Petal.Length)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", se = TRUE, color = "red") +
  labs(title = "Regression: Petal.Length vs Sepal.Length",
       x = "Sepal Length", y = "Petal Length")

#2 Multiple regression model predicting mpg using wt, hp, and drat in mtcars


# Load dataset
data("mtcars")

# Multiple Linear Regression
model2 <- lm(mpg ~ wt + hp + drat, data = mtcars)
summary(model2)

# Q3. Check R² and Adjusted R² of the model in Q2


# Display R-squared values
summary(model2)$r.squared
summary(model2)$adj.r.squared


#4 Plot residuals of regression model in Q1 and interpret


# Residual vs Fitted Plot
plot(model1, which = 1, col = "blue")

# Q-Q Plot for residuals
plot(model1, which = 2, col = "red")


#5 Build regression model predicting Ozone using Temp from airquality


# Load dataset
data("airquality")

# Remove missing values to avoid NA errors
airquality <- na.omit(airquality)

# Simple Linear Regression
air_model <- lm(Ozone ~ Temp, data = airquality)
summary(air_model)

# Plot regression line
ggplot(airquality, aes(x = Temp, y = Ozone)) +
  geom_point(color = "blue") +
  geom_smooth(method = "lm", se = TRUE, color = "red") +
  labs(title = "Regression: Ozone vs Temperature",
       x = "Temperature", y = "Ozone (ppb)")

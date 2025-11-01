library(dplyr)

# Load datasets
data("iris")
data("mtcars")
data("airquality")

#1 One sample ttest: check if mean mpg in mtcars differs from 20
t_test1 <-t.test(mtcars$mpg, mu = 20)
t_test1

# 2. ANOVA: Compare Petal.Width across species in iris
anova_model <-aov(Petal.Width ~ Species, data = iris)
summary(anova_model)

# 3. Correlation between mpg and hp in mtcars
correlation <-cor(mtcars$mpg, mtcars$hp)
correlation

# 4. Paired t-test on Sepal.Length and Sepal.Width in iris
paired_test <-t.test(iris$Sepal.Length, iris$Sepal.Width, paired = TRUE)
paired_test

# 5. Correlation between Ozone and Temp in airquality
air_cor <-cor.test(airquality$Ozone, airquality$Temp, use = "complete.obs")
air_cor

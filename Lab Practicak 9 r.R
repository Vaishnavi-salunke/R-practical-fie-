# Load Required Libraries
library(dplyr)
library(caret)
library(rpart)
library(rpart.plot)
library(pROC)
library(ggplot2)

# Load Dataset
data(iris)
head(iris)

# Convert Species into Binary Classification
iris$Species <- ifelse(iris$Species == "setosa", "setosa", "non_setosa")

# Split Dataset into Training and Testing Sets
set.seed(123)
trainIndex <- createDataPartition(iris$Species, p = 0.7, list = FALSE)
trainData <- iris[trainIndex, ]
testData <- iris[-trainIndex, ]

# Build Logistic Regression Model
logistic_model <- glm(Species ~ ., data = trainData, family = "binomial")
summary(logistic_model)

# Predict on Test Data
predictions <- predict(logistic_model, newdata = testData, type = "response")
predicted_class <- ifelse(predictions > 0.5, "non_setosa", "setosa")

# Evaluate Model
conf_matrix <- confusionMatrix(factor(predicted_class),
                               factor(testData$Species),
                               positive = "non_setosa")
conf_matrix

# Plot ROC Curve
roc_curve <- roc(testData$Species, as.numeric(predictions))
plot(roc_curve, col = "blue", main = "ROC Curve for Logistic Regression Model")

# Decision Tree Classification
dt_model <- rpart(Species ~ ., data = trainData, method = "class")
rpart.plot(dt_model)

# Predict Using Decision Tree
dt_predictions <- predict(dt_model, newdata = testData, type = "class")

# Evaluate Decision Tree
conf_matrix_dt <- confusionMatrix(dt_predictions,
                                  factor(testData$Species),
                                  positive = "non_setosa")
conf_matrix_dt

# Load the iris dataset
data(iris)

# Split the data into traingin and testing sets
library(caret)
set.seed(123)
train_indicies <- createDataPartition(iris$Species, p = 0.7, list = FALSE)
train_data <- iris[train_indicies, ]
test_data <- iris[-train_indicies, ]

# Train the k-nearest neighbors classifier
library(class)
predictions <- knn(train = train_data[, 1:4], test = test_data[, 1:4], cl = train_data$Species, k = 3)

# Evaluate the performance of the classifier
accuracy <- sum(predictions == test_data$Species) / nrow(test_data)
cat("Accuracy of the k-NN classifier:", accuracy)
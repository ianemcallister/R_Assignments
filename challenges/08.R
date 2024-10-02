# Challenge 8

# Using the iris dataset, split the data into training and 
# testing sets, train a k-nearest neighbors (k-NN) classifier 
# with k=3, make predictions on the testing set, and calculate 
# the accuracy of the model. Once done, upload your code to GitHub.

# Set a random seed for reproducibility
set.seed(123)

# Generate random indicies for training set
train_indicies <- sample(1:nrow(iris), 0.7 * nrow(iris))

# Create the training set
train_data <- iris[train_indicies, ]

# Create the testing set
test_data <- iris[-train_indicies, ]

library(class)

# Train a k-NN classifier
model <- knn(train = train_data[, -5], test = test_data[, -5], cl = train_data[, 5], k = 3)

# Calculate the accuracy
accuracy <- sum(model == test_data[, 5]) / nrow(test_data)

# Print the accuracy
cat('The accuracy of the k-NN classifier on the testing set is:', accuracy)
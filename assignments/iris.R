# Data Exploration of the Iris Dataset
data(iris) # Load the iris dataset

# Display the structure of the dataset
str(iris)

# Calculate and print the sumary statistics
summary(iris)

plot(iris$Petal.Length, iris$Petal.Width, xlab = "Petal Length", ylab = "Petal Width", main = "Scatter Plot of Petal Length vs. Wdith")

# Calculate the correlation matrix
cor_matrix <- cor(iris[, c("Sepal.Length", "Sepal.Width", 'Petal.Length', "Petal.width")])

# Visualize the correlations
heatmap(cor_matrix, main = "Correlation Matrix of Iris Dataset")
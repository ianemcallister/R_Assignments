# Challenge 6
# Using the built-in iris dataset in R, perform data exploration 
# by calculating summary statistics and creating a scatter plot 
# of sepal length and width. Once done, upload your code to GitHub.

# Calculate summary statistics of the iris dataset
summary(iris)

plot(iris$Sepal.Length, iris$Sepal.Width, xlab = 'Sepal Length', ylab = 'Sepal Width', main = "Scatter Plot of Sepal Length vs. Width")
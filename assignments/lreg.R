# Linear Regression Model Training with the mtcars Dataset
data(mtcars) # Load the mtcars dataset

X <- mtcars$hp # Predictor variable (horsepower)
Y <- mtcars$mpg # REsponse variable (miles per gallon)

# Train the linear regresion model
model <- lm(Y ~ X, data = mtcars)

# Print the model summary
summary(model)
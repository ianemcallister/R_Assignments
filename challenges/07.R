# Challenge 7

# Train a linear regression model using the mtcars 
# dataset to predict the miles per gallon (mpg) based 
# on horsepower (hp), and print the predicted mpg for a 
# new car with 150 horsepower. Once done, upload your code 
# to GitHub.

# Train a linear regression model
model <- lm(mpg ~ hp, data = mtcars)

# Create a new car data frame with 150 horsepower
new_car <- data.frame(hp = 150)

# Predict the mpg for the new car
predicted_mpg <- predict(model, newdata = new_car)

# Print the predicted mpg
cat("The predicted MPG for a car with 150 horsepoweris:", predicted_mpg)
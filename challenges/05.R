# Challenge 5
# Calculate and print the weighted average of a list of 
# numbers (given as 'numbers') with corresponding weights 
# (given as 'weights').

# Weighted Average Calculation
numbers <- c(10, 15, 20, 25, 30) # List of numbers
weights <- c(0.1, 0.2, 0.3, 0.2, 0.2) # List of corresponding weights

weighted_sum <- sum(numbers * weights) # calculate the weighted sum
total_weight <- sum(weights) # Calculate the total weight
weighted_average <- weighted_sum / total_weight # Calculate the weighted average

# Print the result
cat("The weighted Average of the given number is:", weighted_average)
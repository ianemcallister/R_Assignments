# Challenge 3:
# Write a recursive function to calculate the factorial of a given number and print the result for n=5.

factorial <- function(n) {
  if(n == 0 || n == 1) {
    # Base case: return 1 for n=0 or n=1
    return(1)
  } else {
    # Recursively multiply n with factoral of n-1
    return(n * factorial(n - 1))
  }
}

# Define the number for which to calculate factorial
n <- 5

# Call the recursive factorial function
factorial_result <- factorial(n)

# Log the results
cat("The factorial of", n, "is:", factorial_result)
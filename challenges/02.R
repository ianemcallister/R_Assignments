# Challenge 2:
# Write a program that calculates and prints the sum of even numbers from 2 to 100.

# init value
sum_value <- 0

# Loop through values
for (i in seq(2, 100, by=2)) {
  sum_value <- sum_value + i
}

cat("Sum:", sum_value)
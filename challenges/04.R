# Challenge 4
# Write a program to count the number of unique vowels 
# in a given string (case-insensitive) and print the 
# count for the string "Hello, world!".

# Define the input string
input_string <- "Hello, World!"

# List of vowels
vowels <- c("a", 'e', 'i', 'o', 'u')

# Initialize a variable to count unique vowels
vowel_count <- 0

# Convert the string to lowercase
input_string <- tolower(input_string)

# iterate over each character in the input string
for (char in strsplit(input_string, "")[[1]]) {
  if(char %in% vowels) {
    # Increment vowel count if character is a vowel
    vowel_count <- vowel_count +1
    
    # Remove the counted vowel from the list
    vowels <- vowels[vowels != char]
  }
}

# Print the count
cat("The number of unique vowels in the given string is:", vowel_count)
# Bubble Sort Function
bubble_sort <- function(chars) {
  n <- length(chars)
  for (i in 1:(n-1)) {
    for (j in 1:(n-1)) {
      if (chars[j] > chars[j+1]) {
        # Swap elements
        temp <- chars[j]
        chars[j] <- chars[j+1]
        chars[j+1] <- temp
      }
    }
  }
  return(chars)
}

# Function to check if two strings are anagrams
is_anagram <- function(str1, str2) {
  # Convert both strings to lowercase and split them into chars
  chars1 <- strsplit(tolower(str1), "")[[1]]
  chars2 <- strsplit(tolower(str2), "")[[1]]
  
  # Sort the characters using bubble sort
  sorted_str1 <- bubble_sort(chars1)
  sorted_str2 <- bubble_sort(chars2)
  
  # Compare the sorted characters
  return (identical(sorted_st1, sorted_str2))
}

# Example usage
print(is_anagram('listen', 'silent')) # should return TRUE
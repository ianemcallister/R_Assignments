# Example text data for analysis
example_text <- c(
  "Oil prices are expected to rise in the coming months.",
  "The stock market experienced a significatn drop today.",
  "New technology advancements are driving innovation in the industry.",
  "Political leaders are discussing new policies for economic growth.",
  "The weather forecast prediects heavy rainfall in the region."
)

# Load the necessary pacakges
library(tm) # Text mining package
library(e1071) # Package for carious machine learning algorithms

# Preprocess the example text data
preprocessed_text <- tolower(example_text) # Convert text to lowercase
preprocessed_text <- removePunctuation(preprocessed_text) # Remove puncutation
preprocessed_text <- removeNumbers(preprocessed_text) # Remove numbers
preprocessed_text <- removeWords(preprocessed_text, stopwords("en")) # remove common english stopwords
preprocessed_text <- stripWhitespace(preprocessed_text) # Remove extra whitespace

# Create a corpus and coument-term matrix
corpus <- Corpus(VectorSource(preprocessed_text)) # Create a text corpus
dtm <- DocumentTermMatrix(corpus) # Create a document-term matrix

# create labels for the example text
labels <- factor(c('Oil', "Stock", 'Technology', "Politics", "Weather")) # Create categories

# Train a Naive Bayes classifier
model <- naiveBayes(x = as.matrix(dtm), y = labels)  # Train a Naive Bayes classifier

# PRedict the category of a new document
new_doc <- "Investors are concerned about the market volatility."
preprocessed_new_doc <- tolower(new_doc) # Convert text to lowercase
preprocessed_new_doc <- removePunctuation(preprocessed_new_doc) # Remove puncutation
preprocessed_new_doc <- removeNumbers(preprocessed_new_doc) # Remove numbers
preprocessed_new_doc <- removeWords(preprocessed_new_doc, stopwords("en")) # remove common english stopwords
preprocessed_new_doc <- stripWhitespace(preprocessed_new_doc) # Remove extra whitespace

# Create a new document-term matrix for the new document
new_corpus <- Corpus(VectorSource(preprocessed_new_doc)) # Create a corpus for the new document
new_dtm <- DocumentTermMatrix(new_corpus, control = list(dictionary = Terms(dtm))) # create new dtm

# Convert the new_dtm to a metrix and predict the cateogry of the new document
new_dtm_matrix <- as.matrix(new_dtm) # Convert new DTM to matrix
predicted_category <- predict(model, new_dtm_matrix) # Predict the cateogry of the new document

cat("The Predicted category of the new document is:", levels(predicted_category), "\n") # Display predicted category
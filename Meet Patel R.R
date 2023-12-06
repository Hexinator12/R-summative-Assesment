#summary
summary(netflix)

#print
print(netflix)

#head, shows first 8 lines
head(netflix,8)

#tail, shows last 8 lines
tail(netflix,8)

#display attributes
names(netflix)

#unique values in a column
unique(netflix$genre)

#number of rows
nrow(netflix)

#number of columns
ncol(netflix)

#dimension
dim(netflix)

#sort
sort(netflix$title)

sort(netflix$year)

#minimum
min(netflix$rating)

#maximum
max(netflix$rating)

#barplot
#library for plotting
library(ggplot2)

# Bar plot for count of shows/movies in each certificate category
certificate_plot <- ggplot(netflix, aes(x = certificate, fill = certificate)) +
  geom_bar() +
  labs(title = "Count of Shows/Movies in Each Certificate Category",
       x = "Certificate",
       y = "Count") +
  theme_minimal()

# Histogram for the distribution of ratings
rating_plot <- ggplot(netflix, aes(x = rating, fill = ..count..)) +
  geom_histogram(binwidth = 0.5, color = "red") +
  labs(title = "Distribution of Ratings",
       x = "Rating",
       y = "Count") +
  theme_minimal()

# Display the plots
print(certificate_plot)
print(rating_plot)

#boxplot
# library for plotting
library(ggplot2)

# Box plot for the distribution of ratings
boxplot_plot <- ggplot(netflix, aes(x = "", y = rating, fill = certificate)) +
  geom_boxplot() +
  labs(title = "Box Plot of Ratings by Certificate",
       x = "",
       y = "Rating",
       fill = "Certificate") +
  theme_minimal()

# Display the plot
print(boxplot_plot)

#filtering the dataset
high_rated_shows <- subset(netflix, rating > 8)
print(high_rated_shows)

#unique genre
unique_genres <- unique(unlist(strsplit(as.character(netflix$genre), ", ")))
print(unique_genres)





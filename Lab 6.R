#load the library 
library('tidyverse')

# Load the dataset
data('diamonds')

# Visualization 1: Histogram
# This shows the distribution of diamond sizes in carats

hist1 <- ggplot(diamonds, aes(x = carat)) +
  geom_histogram(binwidth = 0.1, fill = "pink", color = "purple") +
  labs(title = "Distribution of Diamond Carat Sizes",
       x = "Carat",
       y = "Frequency") +
  theme_minimal()

# Most diamonds are relatively small (under 2 carats),
# with the frequency dropping sharply as carat size increases.


# Visualization 2: Boxplot 
# This shows how prices vary across different cut qualities

box1 <- ggplot(diamonds, aes(x = cut, y = price, fill = cut)) +
  geom_boxplot() +
  labs(title = "Boxplot of Diamond Prices by Cut Quality",
       x = "Cut Quality",
       y = "Price (USD)") +
  theme_minimal()


# While 'Ideal' cut diamonds are highly regarded,
# they don’t always command the highest prices.
# Price seems to be influenced by multiple factors like carat and clarity,
# not just cut quality.
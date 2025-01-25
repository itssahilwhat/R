# Load the necessary libraries
library(boot)     # For bootstrap-related functions
library(ggplot2)  # For data visualization

# Load the data
# Read loans income data
loans_income <- read.csv('data/loans_income.csv')  # Load the CSV file
loans_income <- loans_income[, 1]  # Select only the first column (assuming it's the income column)

# Read S&P 500 data
sp500_px <- read.csv('data/sp500_data.csv', row.names = 1)  # Load the CSV file, treating the first column as row names

# Create a Gaussian (normal) distribution curve
x <- seq(from = -3, to = 3, length = 300)  # Create a sequence of 300 points from -3 to 3
gauss <- dnorm(x)  # Compute the probability density function of a standard normal distribution for 'x'

# Set up the plot margins
par(mar = c(3, 3, 0, 0) + 0.1)

# Plot the Gaussian curve
plot(
  x, gauss, type = 'l', col = 'blue',  # Line plot with blue color
  xlab = '', ylab = '',                # No axis labels
  axes = FALSE                         # Suppress default axes
)

# Fill the area under the Gaussian curve with blue color
polygon(x, gauss, col = 'blue')

# Turn off the current plotting device
dev.off()

# Generate 1000 random samples from a standard normal distribution
norm_samp <- rnorm(1000)

# Set up the plot margins
par(mar = c(3, 3, 0, 0) + 0.1)

# Plot a histogram of the random samples
h <- hist(
  norm_samp,
  axes = FALSE,        # Suppress default axes
  col = 'red',         # Red color for the bars
  main = ''            # No title
)
h
# Turn off the current plotting device
dev.off()

## Sampling Distribution of a Statistic

# take a simple random sample
samp_data <- data.frame(income=sample(loans_income, 1000),
                        type='data_dist')

# take a sample of means of 5 values
samp_mean_05 <- data.frame(
  income = tapply(sample(loans_income, 1000*5),
                  rep(1:1000, rep(5, 1000)), FUN=mean),
  type = 'mean_of_5')

# take a sample of means of 20 values
samp_mean_20 <- data.frame(
  income = tapply(sample(loans_income, 1000*20),
                  rep(1:1000, rep(20, 1000)), FUN=mean),
  type = 'mean_of_20')

# bind the data.frames and convert type to a factor
income <- rbind(samp_data, samp_mean_05, samp_mean_20)
income$type <- factor(income$type,
                      levels=c('data_dist', 'mean_of_5', 'mean_of_20'),
                      labels=c('Data', 'Mean of 5', 'Mean of 20'))

ggplot(income, aes(x=income)) +
  geom_histogram(bins=40) +
  facet_grid(type ~ .)
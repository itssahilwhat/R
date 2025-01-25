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
# dev.off()

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
# dev.off()

# Sampling Distribution of a Statistic

# Take a simple random sample of 1000 values from the loans_income dataset
samp_data <- data.frame(
  income = sample(loans_income, 1000),  # Random sample of 1000 values
  type = 'data_dist'                   # Label for the data type
)

# Take a sample of means of 5 values (1000 groups, each with 5 samples)
samp_mean_05 <- data.frame(
  income = tapply(
    sample(loans_income, 1000 * 5),              # Randomly sample 5000 values
    rep(1:1000, rep(5, 1000)),                  # Create 1000 groups, each with 5 samples
    FUN = mean                                  # Calculate the mean of each group
  ),
  type = 'mean_of_5'                            # Label for the data type
)

# Take a sample of means of 20 values (1000 groups, each with 20 samples)
samp_mean_20 <- data.frame(
  income = tapply(
    sample(loans_income, 1000 * 20),            # Randomly sample 20000 values
    rep(1:1000, rep(20, 1000)),                # Create 1000 groups, each with 20 samples
    FUN = mean                                  # Calculate the mean of each group
  ),
  type = 'mean_of_20'                           # Label for the data type
)

# Combine all the datasets into a single data frame
income <- rbind(samp_data, samp_mean_05, samp_mean_20)

# Convert the 'type' column into a factor for better visualization
income$type <- factor(
  income$type,
  levels = c('data_dist', 'mean_of_5', 'mean_of_20'),  # Original labels
  labels = c('Data', 'Mean of 5', 'Mean of 20')       # Human-readable labels
)

dev.new()
# Plot the histogram using ggplot2
ggplot(income, aes(x = income)) +
  geom_histogram(bins = 40) +         # Create histograms with 40 bins
  facet_grid(type ~ .)                # Separate plots for each type of data distribution

## The Bootstrap
# Define a function to calculate the statistic (median in this case)
stat_fun <- function(x, idx) {
  median(x[idx])  # Compute the median of the resampled data
}

# Perform the bootstrap with 1000 resamples
boot_obj <- boot(loans_income, R = 1000, statistic = stat_fun)

# Display the bootstrap results
boot_obj

## Confidence Intervals
# Set random seeds for reproducibility
set.seed(5)
set.seed(7)

# Take a random sample of 20 observations from the data
sample20 <- sample(loans_income, 20)

# Calculate the mean of the sample
sampleMean <- mean(sample20)

# Define a function to calculate the mean for bootstrap resamples
stat_fun <- function(x, idx) {
  mean(x[idx])  # Compute the mean of the resampled data
}

# Perform the bootstrap with 500 resamples
boot_obj <- boot(sample20, R = 500, statistic = stat_fun)

# Compute the 90% confidence interval
boot_ci <- boot.ci(boot_obj, conf = 0.9, type = 'basic')

# Extract the confidence interval values
ci90 <- boot_ci$basic[4:5] # 4 and 5 are the indices for the lower and upper bounds
ci <- data.frame(ci = ci90, y = c(9, 11)) # This helps create a horizontal line for the CI at a specific height in the plot.



# Display the confidence interval
ci

# Create a data frame for bootstrap means
X <- data.frame(mean = boot_obj$t)

# Plot the bootstrap distribution of means with the confidence interval
ggplot(X, aes(x = mean)) +
  geom_histogram(bins = 40, fill = '#AAAAAA') +  # Histogram of bootstrap means
  geom_vline(xintercept = sampleMean, linetype = 2) +  # Sample mean as a dashed line
  geom_path(aes(x = ci, y = 10), data = ci, size = 2) +  # Confidence interval line
  geom_path(aes(x = ci90[1], y = y), data = ci, size = 2) +  # Lower CI bound
  geom_path(aes(x = ci90[2], y = y), data = ci, size = 2) +  # Upper CI bound
  annotate('text', x = sampleMean, y = 20, label = 'Sample mean', size = 6) +  # Annotate sample mean
  annotate('text', x = sampleMean, y = 8, label = '90% interval', size = 6) +  # Annotate CI
  theme_bw() +  # Use a clean theme
  labs(x = '', y = 'Counts')  # Add axis labels

# Normal Distribution - Basic Overview

# Generate a random sample of 100 values from a standard normal distribution
norm_samp <- rnorm(100)

# Create a QQ-plot to compare the quantiles of the sample to a standard normal distribution
qqnorm(norm_samp, main='', xlab='Quantile of normal distribution', ylab='z-score')

# Add a reference line (diagonal line) to the QQ-plot. If the sample is normal, points will lie on this line.
abline(a=0, b=1, col='grey')

# The QQ-plot helps us assess whether the data follows a normal distribution by comparing the data’s quantiles
# to the theoretical quantiles of a normal distribution.

# Long-Tailed Distributions - Understanding Heavy Tails

# Load the Netflix stock price data (from the 'sp500_px' dataset)
# We are using the closing prices of Netflix (NFLX)
nflx <- sp500_px[,'NFLX']

# Apply log difference on the data to calculate the daily returns (logarithmic returns)
nflx <- diff(log(nflx[nflx > 0]))

# Create a QQ-plot of the NFLX returns data
# This plot helps check if the returns follow a normal distribution
qqnorm(nflx)

# Add a reference line to assess the distribution shape
abline(a=0, b=1, col='grey')

# If the data points deviate from the line, this indicates that the distribution is not normal
# The longer the tails, the more the points will deviate from the reference line.

# Binomial Distribution

# The dbinom function calculates the probability of getting exactly 'x' successes in 'size' trials
# Here we are calculating the probability of getting exactly 2 successes in 5 trials with a success probability of 0.1.
dbinom(x = 2, size = 5, p = 0.1)

# The pbinom function calculates the cumulative probability (i.e., the probability of getting 2 or fewer successes)
# in 5 trials with a success probability of 0.1.
pbinom(2, 5, 0.1)

# Another example of a binomial distribution:
# The probability of getting 0 successes in 200 trials with a probability of success of 0.02.
dbinom(x = 0, size = 200, p = 0.02)

# Binomial Distribution helps model scenarios where there are two possible outcomes (like success or failure),
# and we perform a fixed number of independent trials.

# Poisson Distribution

# The rpois function generates random numbers from a Poisson distribution.
# Here, we are generating 100 random numbers with a rate (lambda) of 2.
rpois(100, lambda = 2)

# Poisson Distribution is commonly used to model count data, like the number of arrivals at a store in an hour.
# The 'lambda' parameter is the expected rate of occurrences in a fixed interval.

# Exponential Distribution

# The rexp function generates random numbers from an exponential distribution.
# Here, we generate 100 random numbers with a rate (rate) of 0.2.
rexp(n = 100, rate = 0.2)

# Exponential Distribution models the time between events in a Poisson process.
# For example, how long we have to wait for the next customer to arrive at a store.

# Weibull Distribution

# The rweibull function generates random numbers from a Weibull distribution.
# Here, we generate 100 random numbers with shape parameter 1.5 and scale parameter 5000.
rweibull(100, 1.5, 5000)

# The Weibull distribution is commonly used for reliability analysis and modeling life data,
# such as the time until a machine breaks down or the time until a component fails.
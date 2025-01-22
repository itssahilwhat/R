## Estimates of Location
library(readr)

state <- read_csv(file = "data/state.csv")
mean(state$Population)
mean(state$Population, trim = 0.1)
median(state$Population)

install.packages("matrixStats")
library(matrixStats)

weighted.mean(state$Murder.Rate, w = state$Population)
weightedMedian(state$Murder.Rate, w = state$Population)

## Estimates of Variability
sd(state$Population)
IQR(state$Population)
mad(state$Population) ## Mean Absolute Deviation

### Percentiles and Boxplots
quantile(state$Murder.Rate, probs = c(0.05, 0.25, 0.5, 0.75, 0.95))
boxplot(state$Population/1000000, ylab = "Population (millions)")

### Frequency Table and Histograms
breaks <- seq(from=min(state$Population), to=max(state$Population), length=11)
pop_freq <- cut(state$Population, breaks = breaks, right = TRUE, include.lowest = TRUE)
table(pop_freq)

### Density Estimates
# Density is an alternative to histograms that can provide more insight into the distribution of the data points.
hist(state[["Population"]], breaks=breaks)
hist(state[["Murder.Rate"]], freq=FALSE) ## a density plot corresponds to plotting the histogram as a proportion rather
# than counts (you specify this in R using the argument freq=FALSE).
lines(density(state[["Murder.Rate"]]), lwd=3, col="blue")


## Exploring Binary and Categorical Data
dfw <- read_csv("data/dfw_airline.csv")
dfw
barplot(as.matrix(dfw)/6, cex.axis=.5)


## Correlation
sp500_px <- read.csv("data/sp500_data.csv", row.names=1)
sp500_sym <- read.csv("data/sp500_sectors.csv", stringsAsFactors = FALSE)
etfs <- sp500_px[row.names(sp500_px)>"2012-07-01",
                 sp500_sym[sp500_sym$sector=="etf", 'symbol']]
install.packages("corrplot")
library(corrplot)
corrplot(cor(etfs), method = "ellipse")

telecom <- sp500_px[, sp500_sym[sp500_sym$sector == 'telecommunications_services', 'symbol']]
telecom <- telecom[row.names(telecom) > '2012-07-01',]
telecom_cor <- cor(telecom)

### Scatterplots
plot(telecom$T, telecom$VZ, xlab="T", ylab="VZ")
abline(h=0, v=0, col='grey')
dim(telecom)


## Exploring Two or More Variables
kc_tax <- read.csv('data/kc_tax.csv')
kc_tax0 <- subset(kc_tax, TaxAssessedValue < 750000 & SqFtTotLiving>100 &
  SqFtTotLiving<3500)
nrow(kc_tax0)

### Hexagonal binning and Contours
#### Plotting numeric versus numeric data
# If the number of data points gets large, scatter plots will no longer be meaningful. Here methods that visualize
# densities are more useful. The `stat_hexbin` method for is one powerful approach.
library(ggplot2)
graph <- ggplot(kc_tax0, (aes(x=SqFtTotLiving, y=TaxAssessedValue))) +
  stat_binhex(colour="white") +
  theme_bw() + ## black and white theme
  scale_fill_gradient(low="white", high="black") +
  labs(x="Finished Square Feet", y="Tax Assessed Value")
graph

# Visualize as a two-dimensional extension of the density plot.

graph2 <- ggplot(kc_tax0, aes(SqFtTotLiving, TaxAssessedValue)) +
  theme_bw() +
  geom_point(color='blue', alpha=0.1) +
  geom_density2d(color='white') +
  scale_y_continuous(labels = function(x) format(x, scientific = FALSE)) +
  labs(x='Finished Square Feet', y='Tax-Assessed Value')
graph2

### Two Categorical Variables
install.packages("gmodels")
library(gmodels)
lc_loans <- read.csv("data/lc_loans.csv")
x_tab <- CrossTable(lc_loans$grade, lc_loans$status,
                    prop.c=FALSE, prop.chisq=FALSE, prop.t=FALSE)



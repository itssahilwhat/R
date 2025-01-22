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

## Exploring the Data Distribution
quantile(state$Murder.Rate, probs = c(0.05, 0.25, 0.5, 0.75, 0.95))
boxplot(state$Population/1000000, ylab = "Population (millions)")

breaks <- seq(from=min(state$Population), to=max(state$Population), length=11)
pop_freq <- cut(state$Population, breaks = breaks, right = TRUE, include.lowest = TRUE)
table(pop_freq)

hist(state[["Population"]], breaks=breaks)

hist(state[["Murder.Rate"]], freq=FALSE) ## a density plot corresponds to plotting the histogram as a proportion rather
# than counts (you specify this in R using the argument freq=FALSE).
lines(density(state[["Murder.Rate"]]), lwd=3, col="blue")


## Exploring Binary and Categorical Data
dfw <- read_csv("data/dfw_airline.csv")
dfw
barplot(as.matrix(dfw)/6, cex.axis=.5)
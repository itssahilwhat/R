# comment
a <- 1
b <- 2

print(a + b)

c <- "Hello, World!"
print(c)

# Vector
vec_1 <- c(1, 2, 3, 4, 5)
print(vec_1)

# Pipes is used to express the sequence of operations, represented by the %>% symbol
data("ToothGrowth")
View(ToothGrowth)

install.packages("dplyr")
library(dplyr)

filtered_tg <- filter(ToothGrowth, dose == 0.5)
filtered_tg
arrange(filtered_tg, len)

arrange(filter(ToothGrowth, dose == 0.5), len)

filtered_toothgrowth <- ToothGrowth %>%
  filter(dose == 0.5) %>%
  group_by(supp) %>%
  summarize(mean_len = mean(len, na.rm = T), group = "drop")
filtered_toothgrowth



library(tidyverse)
library(lubridate)

print(today())
print(now())

ymd("2021-01-20")
mdy("January 20th, 2021")
dmy("20-Jan-2021")
ymd(20210120)
ymd_hms("2021-01-20 20:11:59")
mdy_hm("01/20/2021 08:01")
as_date(now()) # remove time component and keeps date only

data.frame(x = c(1, 2, 3), y = c(1.5, 5.5, 7.5))
z <- data.frame(x = c(1, 2, 3), y = c(1.5, 5.5, 7.5))
z[2, 1]

file.create("new_text_file.txt")
file.copy("new_text_file.txt", "R")
unlink("new_text_file.txt")

matrix(c(3:8), nrow = 2)
matrix_data <- matrix(c(3:8), nrow = 2)
matrix_data[1, 2]

subset(airquality, Solar.R > 150 & Wind > 10)
subset(airquality, Solar.R > 150 | Wind > 10)
subset(airquality, Day != 1)

x <- 4
if (x > 0) {
  print("x is a positive number")
}

library(ggplot2)
ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point()

library(dplyr)
mpg %>% filter(hwy > 30) %>% select(manufacturer, model)

library(tidyr)
wide_data <- tibble(id = 1:2, key1 = c("A", "B"), key2 = c("X", "Y"))
long_data <- wide_data %>% pivot_longer(cols = starts_with("key"))



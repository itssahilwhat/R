id <- c(1:10)


name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller",
          "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")


job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer",
               "Programmer", "Management", "Clerical", "Developer", "Programmer")


employee <- data.frame(id, name, job_title)
print(employee)

separate(
  data = employee,
  col = name,
  into = c('first_name', 'last_name'),
  sep = ' '
)

first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", "Candace", "Carlson", "Pansy", "Darius", "Claudia")

last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, first_name, last_name, job_title)
print(employee)

unite(
  data = employee,
  col = 'name',
  first_name,
  last_name,
  sep = ' '
)

library(palmerpenguins)
data(penguins)
View(penguins)

penguins <- penguins %>%
  mutate(body_mass_kg = body_mass_g / 1000, flipper_length_m = flipper_length_mm / 1000)
head(penguins)

colnames(penguins)


library(tidyr)

# Sample wide-format data
wide_data <- data.frame(
  Name = c("Alice", "Bob"),
  Year_2020 = c(10, 15),
  Year_2021 = c(20, 25)
)
print(wide_data)
# Convert to long format
long_data <- wide_data %>%
  pivot_longer(cols = starts_with("Year"),
               names_to = "Year",
               values_to = "Value")

print(long_data)

# Convert back to wide format
wide_data_reconstructed <- long_data %>%
  pivot_wider(names_from = "Year",
              values_from = "Value")

print(wide_data_reconstructed)

install.packages('Tmisc')
library(Tmisc)
data(quartet)
View(quartet)

quartet %>%
  group_by(set) %>%
  summarise(mean(x), sd(x), mean(y), sd(y), cor(x, y))

ggplot(quartet, aes(x, y)) +
    geom_point() +
    geom_smooth(method = "lm", se=FALSE) +
    facet_wrap(~set)

install.packages('datasauRus')
library(datasauRus)

ggplot(datasaurus_dozen, aes(x=x, y=y, colour=dataset)) +
  geom_point() +
  theme_void() +
  theme(legend.position = "none") +
  facet_wrap(~dataset, ncol=3)

install.packages('SimDesign')
library(SimDesign)
actual_temp <- c(70, 71, 72, 73, 74, 75, 76, 77, 78, 79)
predicted_temp <- c(70.5, 71.5, 72.5, 73.5, 74.5, 75.5, 76.5, 77.5, 78.5, 79.5)
bias(actual_temp, predicted_temp)

actual_sales <- c(100, 200, 300, 400, 500)
predicted_sales <- c(110, 220, 330, 440, 550)
bias(actual_sales, predicted_sales)

# if negative, the predicted outcome are more than the actual outcome
# if positive, the predicted outcome are less than the actual outcome
# if 0, the predicted outcome are equal to the actual outcome
# So, the value obtain should be near to 0

rmarkdown::render("Lesson-04.txt")
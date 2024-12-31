install.packages(c("here", "skimr", "janitor", "dplyr", "palmerpenguins"))

library(here)
library(skimr)
library(janitor)
library(dplyr)
library(palmerpenguins)

# Load the data
data(penguins)

# Summarize the data
View(penguins)
skim_without_charts(penguins)
glimpse(penguins)
str(penguins)

penguins_selected <- select(penguins, body_mass_g)
penguins_selected

penguins_renamed <- rename(penguins, body_mass = body_mass_g)
penguins_renamed

penguins_lower <- rename_with(penguins, tolower)
penguins_lower

penguins_clean <- clean_names(penguins)
penguins_clean


## Organize the data
library(tidyverse)

penguins %>%
  arrange(bill_length_mm)
penguins %>%
  arrange(-bill_length_mm)

penguins2 <- penguins %>%
  arrange(-bill_length_mm)
View(penguins2)

penguins %>%
  group_by(island) %>%
  drop_na() %>%
    summarize(mean_bill_length = mean(bill_length_mm))

penguins %>%
  filter(species == 'Adelie')

penguins %>%
  group_by(species, island) %>%
  drop_na() %>%
  summarize(mean_bl = mean(bill_length_mm), max_bl = max(bill_length_mm))
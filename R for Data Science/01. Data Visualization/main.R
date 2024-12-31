install.packages(c("tidyverse", "ggthemes", "palmerpenguins"))

library(tidyverse)
library(palmerpenguins)
library(ggthemes)

penguins
glimpse(penguins)
View(penguins)

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(aes(color = species, shape = species)) +
  geom_smooth(method = "lm") + # lm = linear model
  labs(
    title = "Body mass and flipper length",
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
    x = "Flipper length (mm)", y = "Body mass (g)",
    color = "Species", shape = "Species"
  ) +
  scale_color_colorblind()

dim(penguins)
?penguins

# Make a scatterplot of bill_depth_mm vs. bill_length_mm.
# That is, make a scatterplot with bill_depth_mm on the y-axis and bill_length_mm on the x-axis.
# Describe the relationship between these two variables.
ggplot(
  data = penguins,
  mapping = aes(x = bill_length_mm, y = bill_depth_mm)
) +
  geom_point(aes(color = species, shape = species)) +
  geom_smooth(method = "lm") + # lm = linear model
  labs(
    title = "bill_depth_mm vs. bill_length_mm",
    subtitle = "relationship between these two variables",
    x = "Bill Length (mm)", y = "Bill Depth (mm)",
    color = "Species", shape = "Species"
  ) +
  scale_color_colorblind()

# What happens if you make a scatterplot of species vs. bill_depth_mm?
# What might be a better choice of geom?
ggplot(
  data = penguins,
  mapping = aes(x = species, y = bill_depth_mm)
) +
  geom_boxplot(aes(color = species, shape = species)) +
  labs(
    title = "bill_depth_mm vs. species",
    subtitle = "relationship between these two variables",
    x = "Species", y = "Bill Depth (mm)",
    color = "Species", shape = "Species"
  ) +
    scale_color_colorblind()

ggplot(
  data = penguins,
  mapping = aes(x = species, y = bill_depth_mm)
) +
  geom_violin(aes(color = species, shape = species)) +
  labs(
    title = "bill_depth_mm vs. species",
    subtitle = "relationship between these two variables",
    x = "Species", y = "Bill Depth (mm)",
    color = "Species", shape = "Species"
  ) +
  scale_color_colorblind()

ggplot(
  data = penguins,
  mapping = aes(x = bill_length_mm, y = bill_depth_mm)
) +
  geom_point(na.rm = TRUE, aes(color = species, shape = species)) +
  labs(
    title = "Scatterplot of Bill Dimensions",
    caption = "Data come from the palmerpenguins package.",
    x = "Bill Length (mm)",
    y = "Bill Depth (mm)"
  ) +
  theme_minimal()

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(aes(color = bill_depth_mm), na.rm = TRUE) +
  geom_smooth(method = "lm", na.rm = TRUE, se = FALSE) +
    labs(
        title = "Body mass and flipper length",
        subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
        x = "Flipper length (mm)", y = "Body mass (g)",
        color = "Bill Depth (mm)"
    ) +
  theme_minimal()

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g, color = island)
) +
  geom_point() +
  geom_smooth(se = FALSE)

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point() +
  geom_smooth()

ggplot() +
  geom_point(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
  ) +
  geom_smooth(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
  )
install.packages(c("tidyverse", "ggthemes", "palmerpenguins"))

library(tidyverse)
library(palmerpenguins)
library(ggthemes)

penguins
glimpse(penguins)
View(penguins)
?penguins

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
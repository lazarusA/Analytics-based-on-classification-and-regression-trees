library(gapminder)
library(dplyr)
library(ggplot2)

gapminder_2007 <- gapminder %>% 
  filter(year == 2007)
ggplot(gapminder_2007, aes(x= gdpPercap, y = lifeExp, 
                           color = continent, size = pop)) +
  geom_point()  + scale_x_log10()

# Ejercicio:
# Scatter plot comparing pop and lifeExp, with color representing continent
gapminder_1952 <- gapminder %>%
  filter(year == 1952)
ggplot(gapminder_1952, aes(x= pop, y = lifeExp, 
                           color = continent)) +
  geom_point() + scale_x_log10()
# Add the size aesthetic to represent a country's gdpPercap
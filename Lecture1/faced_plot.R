library(gapminder)
library(dplyr)
library(ggplot2)

gapminder_1952 <- gapminder %>%
  filter(year == 1952)
ggplot(gapminder_1952, aes(x= pop, y = lifeExp)) +
  geom_point() + scale_x_log10() + facet_wrap(~ continent)

# Ejercicio: 
# Scatter plot comparing gdpPercap and lifeExp, with color representing continent
# and size representing population, faceted by year
ggplot(gapminder, aes(x= gdpPercap, y = lifeExp, color = continent, size = pop)) +
  geom_point() + scale_x_log10() + facet_wrap(~ year)

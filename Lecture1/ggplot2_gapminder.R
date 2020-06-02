library(gapminder)
library(dplyr)
library(ggplot2)

gapminder_2007 <- gapminder %>% 
  filter(year == 2007)
ggplot(gapminder_2007, aes(x= gdpPercap, y = lifeExp)) +
  geom_point() # + scale_x_log10()


# Ejercicio: 

# Create gapminder_1952
gapminder_1952 <- gapminder %>% 
  filter(year == 1952)
# put pop on the x-axis and gdpPercap on the y-axis
ggplot(gapminder_1952, aes(x = pop, y = gdpPercap)) +
  geom_point()
# Each point represents a country:
# can you guess which country any of the points are?

# Create a scatter plot with pop on the x-axis and lifeExp on the y-axis

#ggplot(gapminder_1952, aes(x = pop, y = lifeExp)) +
# geom_point() + scale_x_log10()

#This makes it easy to see that there isn't a correlation between
# population and life expectancy.

# Scatter plot comparing pop and gdpPercap, with both axes on a log scale


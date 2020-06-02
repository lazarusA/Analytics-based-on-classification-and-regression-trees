library(gapminder)
library(dplyr)
library(ggplot2)

gapminder_2007 <- gapminder %>% 
  filter(year == 2007)
ggplot(gapminder_2007, aes(x= continent, y = lifeExp)) +
  geom_boxplot()

# Ejercicios: 

# Create a boxplot comparing gdpPercap among continents
gapminder_1952 <- gapminder %>%
  filter(year == 1952)

ggplot(gapminder_1952, aes(x= continent, y = gdpPercap)) +
  geom_boxplot() + scale_y_log10()
# Add a title to this graph: "Comparing GDP per capita across continents"
ggplot(gapminder_1952, aes(x = continent, y = gdpPercap)) +
  geom_boxplot() +
  scale_y_log10() + labs(title = "Comparing GDP per capita across continents")

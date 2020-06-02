library(gapminder)
library(dplyr)
library(ggplot2)

gapminder_2007 <- gapminder %>% 
  filter(year == 2007)
ggplot(gapminder_2007, aes(x = lifeExp)) +
  geom_histogram(binwidth = 3) # + scale_x_log10()

# Ejercicios: 

# Create a histogram of population (pop_by_mil)
gapminder_1952 <- gapminder %>%
  filter(year == 1952) %>%
  mutate(pop_by_mil = pop / 1000000)
# solution
ggplot(gapminder_1952, aes(x = pop_by_mil)) +
  geom_histogram(bins = 50) # + scale_x_log10()

# Create a histogram of population (pop), with x on a log scale
ggplot(gapminder_1952, aes(x = pop)) +
  geom_histogram(bins = 50)  + scale_x_log10()

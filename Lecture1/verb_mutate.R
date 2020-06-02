library(gapminder)
library(dplyr)
# mutate
gapminder %>% 
  mutate(pop = pop/1000000) 
# create a new column
gapminder %>% 
  mutate(gdp = gdpPercap * pop) 
#combining verbs 
gapminder %>% 
  mutate(gdp = gdpPercap * pop)  %>%
  filter(year == 2007)  %>%
  arrange(desc(gdp))



# Use mutate to change lifeExp to be in months
# Use mutate to create a new column called lifeExpMonths
gapminder %>% 
  mutate(lifeExp = lifeExp * 12) 
gapminder %>% 
  mutate(lifeExpMonths = lifeExp * 12) 
# find the countries with the highest life expectancy, 
# in months, in the year 2007
gapminder %>% 
  mutate(lifeExpMonths = lifeExp * 12)  %>%
  filter(year == 2007)  %>%
  arrange(desc(lifeExpMonths))
library(gapminder)
library(dplyr)
# Filter the gapminder dataset for the year 1957
gapminder %>% 
  arrange(gdpPercap) # ascending order 
gapminder %>% 
  arrange(desc(gdpPercap)) # descending order 
# more than one pipe
gapminder %>% 
  filter(year == 2007) %>% 
  arrange(desc(gdpPercap))

# Arranging observations by life expectancy

# Filter for the year 1957, then arrange 
# in descending order of population

gapminder %>% 
  filter(year == 1957) %>% 
  arrange(desc(pop))

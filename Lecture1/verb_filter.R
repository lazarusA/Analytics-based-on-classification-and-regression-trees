library(gapminder)
library(dplyr)
# Filter the gapminder dataset for the year 1957
gapminder %>% 
  filter(year == 1957)
gapminder %>% 
  filter(country == "Austria")
gapminder %>% 
  filter(year == 2002,country == "China")
# filter for a different year and country
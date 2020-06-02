library(gapminder)
library(dplyr)
gapminder %>%
  summarize(meanLifeExp = mean(lifeExp)) # this is over the whole dataset

gapminder %>%
  filter(year == 2007) %>%
  summarize(meanLifeExp = mean(lifeExp)) # by year

# multiple columns 
gapminder %>%
  filter(year == 2007) %>%
  summarize(meanLifeExp = mean(lifeExp), totalPop = sum(as.numeric(pop)))

# Ejercicio: 

# Summarize to find the median life expectancy
gapminder %>%
  summarize(medianLifeExp = median(lifeExp)) # this is over the whole dataset
# Filter for 1957 then summarize the median life expectancy
gapminder %>%
  filter(year == 1957) %>%
  summarize(medianLifeExp = median(lifeExp))
# Filter for 1957 then summarize the median life 
# expectancy and the maximum GDP per capita
gapminder %>%
  filter(year == 1957) %>%
  summarize(medianLifeExp = median(lifeExp), 
            maxGdpPercap = max(gdpPercap))

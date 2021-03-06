library(gapminder)
library(dplyr)
library(ggplot2)
by_year_continent <- gapminder %>%
  group_by(year, continent) %>%
  summarize(meanLifeExp = mean(lifeExp), totalPop = sum(as.numeric(pop)))

ggplot(by_year_continent, aes(x = year, y = meanLifeExp, 
                              color = continent)) + geom_line()  + 
  expand_limits(y=0)

# Ejercicios: 

# Summarize the median gdpPercap by year, then save it as by_year
by_year <- gapminder %>%
  group_by(year) %>%
  summarize(medianGdpPercap = median(gdpPercap))
# Create a line plot showing the change in medianGdpPercap over time
ggplot(by_year, aes(x = year, y = medianGdpPercap)) + geom_line() + 
  expand_limits(y=0)
# Summarize the median gdpPercap by year & continent, save as by_year_continent
by_year_continent <- gapminder %>%
  group_by(year, continent) %>%
  summarize(medianGdpPercap = median(gdpPercap))
# Create a line plot showing the change in medianGdpPercap by continent over time
ggplot(by_year_continent, aes(x = year, y = medianGdpPercap, color=continent)) + geom_line() + 
  expand_limits(y=0)

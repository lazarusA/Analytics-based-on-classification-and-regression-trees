library(gapminder)
library(dplyr)
library(ggplot2)
by_year <- gapminder %>%
  group_by(year) %>%
  summarize(meanLifeExp = mean(lifeExp), totalPop = sum(as.numeric(pop)))
ggplot(by_year, aes(x = year, y = totalPop)) + geom_point()  # + expand_limits(y=0)
 
# by year and continent
by_year_continent <- gapminder %>%
  group_by(year, continent) %>%
  summarize(meanLifeExp = mean(lifeExp), totalPop = sum(as.numeric(pop)))

ggplot(by_year_continent, aes(x = year, y = totalPop, 
                              color = continent)) + geom_point()  + 
  expand_limits(y=0)

# Ejercicios: 
# Create a scatter plot showing the change in medianLifeExp over time
by_year <- gapminder %>%
  group_by(year) %>%
  summarize(medianLifeExp = median(lifeExp),
            maxGdpPercap = max(gdpPercap))
ggplot(by_year, aes(x = year, y = medianLifeExp)) + geom_point() + expand_limits(y=0)
# Summarize medianGdpPercap within each continent 
# within each year: by_year_continent
by_year_continent <- gapminder %>%
  group_by(year, continent) %>%
  summarize(medianGdpPercap = median(gdpPercap))
# Plot the change in medianGdpPercap in each continent over time
ggplot(by_year_continent, aes(x = year, y = medianGdpPercap, color = continent)) + geom_point() +
  expand_limits(y=0)
# Summarize the median GDP and median life expectancy per continent in 2007
by_continent_2007 <- gapminder %>%
  filter(year == 2007) %>%
  group_by(continent) %>%
  summarize(medianLifeExp = median(lifeExp),
            medianGdpPercap = median(gdpPercap))
# Use a scatter plot to compare the median GDP and median life expectancy
ggplot(by_continent_2007, aes(x = medianGdpPercap, y = medianLifeExp, color = continent)) + 
  geom_point()

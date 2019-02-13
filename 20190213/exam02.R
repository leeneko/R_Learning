install.packages("ggiraphExtra")
install.packages("maps")
install.packages("tibble")

library(ggiraphExtra)
library(tibble)
library(ggplot2)
library(maps)

USArrests
str(USArrests)

crime <- rownames_to_column(USArrests, var = "state")
crime$state <- tolower(crime$state)

states_map <- map_data("state")

ggChoropleth(data = crime, aes(fill = Murder, map_id = state), map = states_map, interactive = T)

install.packages("stringi")
library(stringi)
install.packages("devtools")
devtools::install_github("cardiomoon/kormaps2014")
library(kormaps2014)
str(changeCode(korpop1))
library(dplyr)
korpop1 <- rename(korpop1, pop = 총인구_명, name = 행정구역별_읍면동)
korpop1

ggChoropleth(data = korpop1, aes(fill = pop, map_id = code, tooltip = name), map = kormap1, interactive = T)

install.packages("plotly")
library(plotly)
library(ggplot2)
p <- ggplot(data = mpg, aes(x = displ, y = hwy, col = drv)) + geom_point()
p
ggplotly(p)

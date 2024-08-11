load('C:/Users/RAC_P/OneDrive/Documents/UMICH/CSC-302/Week 6/HW5/house_prices.rda')
library(ggplot2)
library(lubridate)
library(tidyr)
library(dplyr)

house_prices%>%gather(key=measure, value=value, -c(house_price_index, date, state))->house_reshaped

ggplot(house_prices, aes(x = date, y = house_price_index, group = state)) +
  geom_line() +
  facet_wrap(~ state) +
  scale_x_continuous(breaks = c(1980, 2000, 2020), labels = c("’80", "’00", "’20")) +
  labs(x = "Year", y = "House Price Index", title = "House Price Index Trends by State") +
  theme_minimal()

ggplot(house_reshaped, aes(x = date, y = value, color = measure)) +
  geom_line() +
  facet_wrap(~ state) +
  scale_x_date(date_breaks = "10 years", date_labels = "%Y") +
  labs(title = "House Price Index and Unemployment Percentage Over Time by State",
       x = "Year",
       y = "Value",
       color = "Measure") +
  theme_minimal()

#I had difficulties with this code so it was hard for me to read either of the 2 graphs. 
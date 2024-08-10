load('C:/Users/RAC_P/OneDrive/Documents/UMICH/CSC-302/Week 6/HW5/house_prices.rda')
library(ggplot2)
library(lubridate)

ggplot(house_prices, aes(x = date, y = house_price_index, group = state)) +
  geom_line() +
  facet_wrap(~ state) +
  scale_x_continuous(breaks = ymd(c("1980-01-01",
                                    "2000-01-01", "2020-01-01")), labels = c("80", "00", "20")) +
  labs(x = "Year", y = "House Price Index", title = "House Price Index Trends by State") +
  theme_minimal()

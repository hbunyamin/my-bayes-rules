# Load some packages
library(bayesrules)
library(rstanarm)
library(bayesplot)
library(tidyverse)
library(broom.mixed)
library(tidybayes)

# Load the data
data(weather_WU)
weather_WU %>% 
  group_by(location) %>% 
  tally()

colnames(weather_WU) 

head(weather_WU$day_of_year)

weather_WU <- weather_WU %>% 
  select(location, windspeed9am, humidity9am, pressure9am, temp9am, temp3pm)
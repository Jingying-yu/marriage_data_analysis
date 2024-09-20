#### Preamble ####
# Purpose: Simulates data for analyzing marriage dataset
# Author: Sandy Yu
# Date: 19 September 2024
# Contact: jingying.yu@mail.utoronto.ca
# License: MIT
# Pre-requisites: Sketch ideas


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
set.seed(21)

start_date <- as.Date("2023-01-01")
end_date <- as.Date("2023-12-31")

number_of_dates <- 100

data <- 
  tibble(
    dates = as.Date(runif(n = number_of_dates, 
                          min = as.numeric(start_date), 
                          max = as.numeric(end_date))),
    number_of_marriage = rpois(n=number_of_dates, lambda = 10)
  )
 

write_csv(data, "data/simulated.csv") 



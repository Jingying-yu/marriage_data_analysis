#### Preamble ####
# Purpose: Tests the logistics and structure of simulated data and gathered data
# Author: Sandy Yu
# Date: 19 September 2024
# Contact: jingying.yu@mail.utoronto.ca
# License: MIT
# Pre-requisites: have simulated data and gathered data constucted into dataset in R studio project



#### Workspace setup ####
library(tidyverse)


#### Test data ####
data <- read.csv("data/raw_data/simulated.csv")

#Test for negative numbers
data$number_of_marriage |> min() <= 0

#Test for NA
is.na(data$number_of_marriage) == 0
#### Preamble ####
# Purpose: Cleans the raw plane data recorded by OpendDataToronto
# Author: Sandy Yu
# Date: 19 September 2024 
# Contact: jingying.yu@mail.utoronto.ca
# License: MIT
# Pre-requisites: correctly downloaded raw data from source


#### Workspace setup ####
library(tidyverse)


#### Clean data ####
raw_marraiage_data <- read_csv("data/raw_data/raw_marraiage_data.csv")

cleaned_data <-
  raw_marraiage_data |>
  janitor::clean_names() |>
  separate(col = time_period, into = c("year", "month"), sep = "-") |>
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-")))

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/cleaned_data.csv")

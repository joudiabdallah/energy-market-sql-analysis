#Load package
library(tidyverse)

#Import the CSV
raw_data <- read_csv('C:\\Users\\Judy\\Desktop\\Data analysis\\Datasets\\owid-energy-data.csv')

#Visualise the dataset
glimpse(raw_data)

#Keep only the useful columns for the analysis
oil_gas <- raw_data %>%
  select(country, year, iso_code, population, gdp,
         oil_production, oil_consumption,
         gas_production, gas_consumption,
         oil_share_energy, gas_share_energy,
         energy_per_capita)

#Replace NA with NULL empty values
oil_gas <- oil_gas %>%
  filter(!is.na(year))

#Check updated dataset
head(oil_gas)
nrow(oil_gas)

#Export CSV
write_csv(oil_gas, "C:\\Users\\Judy\\Desktop\\Data analysis\\Datasets\\oil_gas_clean.csv", na = "")

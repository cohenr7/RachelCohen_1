

fish_data <- read.csv("data/Gaeta_etal_CLC_data.csv")

library(dplyr)
#this creates a new table catergorizing fish by size
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small")) %>% 
  filter(scalelength > 1)



##Load packages----------
library(tidyverse)
library(skimr)
library(here)
library(readxl)



##Load data------------
prelim_petct <- read_excel(path = "~/Desktop/Projects/petct/Data/petct_prac.xlsx", 
                       sheet = 1)

##Explore------------
str(prelim_petct)
View(prelim_petct)
head(prelim_petct)
tail(prelim_petct)
names(prelim_petct)
skim(prelim_petct)
summary(prelim_petct)



##Scripts-------------
ggplot(prelim_petct, aes(`SUVmax_W16_24_SUVbw _RightLung`)) + geom_histogram(binwidth = 1)
ggplot(prelim_petct, aes(`SUVmax_W16_24_SUVbw _RightLung`, `SUVmax_W16_24_SUVbw_LeftLung`, na.rm = TRUE)) +
  geom_point() +
  geom_smooth(method = "lm", se = T) + 
  labs(title = "Relationship of Right and Left Lung SUV vaalues", 
       subtitle = "Luminex Substidy",
       x = "Right Lung W16 or W24 SUVmax", 
       y = "Left W16 or W24 SUVmax", 
       color = "blue", 
       caption = "PredictTB")


ggplot(prelim_petct, aes(`SUVmax_W16_24_SUVbw _RightLung`, `SUVmax_W16_24_SUVbw_LeftLung`, na.rm = TRUE)) +
  geom_boxplot() +
  labs(title = "Relationship of Right and Left Lung SUV vaalues", 
       subtitle = "Luminex Substidy",
       x = "Right Lung W16 or W24 SUVmax", 
       y = "Left W16 or W24 SUVmax", 
       color = "blue", 
       caption = "PredictTB")

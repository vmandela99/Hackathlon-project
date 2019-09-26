#clean the workspace
rm(list = ls())

#load packages
library(dplyr)
library(ggplot2)
library(ggthemes)

#set the working directory
setwd("C:/stata assignments/complete/Hackathlon data ibm")

#import the data
#data <- read.csv("hackathlon.csv", header = T, stringsAsFactors = T)

#clean the data
#data2 <- data %>% select(3,13:20) %>% filter( Please.select.the.categories.you.are.interested.in..Academics.=="No" | Please.select.the.categories.you.are.interested.in..Academics. == "Yes")

#import your data as cleaned data
#write.csv(data2,"cleaned hakathlon data.csv", row.names = F)

#clean up again
#rm(list = ls())

#import the new data make sure you rename the columns using easier names in excel.
data <- read.csv("cleaned hakathlon data.csv", header = T, stringsAsFactors = T)

data3 <- data %>% group_by(Safety_and_security, Business_entrepreneurship_development, Career_development, STEM, Governance, Co_curricular_activities, Academics, Character_and_creativity)%>% count()

#import your data as 
#write.csv(data3,"grouped by categories.csv", row.names = F)

#good luck in visualizing
data4 <- data %>% group_by(Safety_and_security, Business_entrepreneurship_development, Career_development, STEM, Governance, Co_curricular_activities, Academics, Character_and_creativity)%>% count()


library(dplyr)



?USArrests

#create data object

my_data <- USArrests

#structure of the data

my_data %>%
  str()


#summary

my_data %>%
  summary()

#head:

my_data %>%
  
head()


#assigning row names to object

states=rownames(my_data)

my_data = my_data %>%
  mutate(State=states)
  
str(my_data)


# Name:Joshua Yee
# Date:--10/11/2018

# Run the below only if the library is not already installed.
# install.packages(dslabs)

library(dslabs)
library(dplyr)
library(tidyverse)
data(us_contagious_diseases)

#Question 1.
dat <- us_contagious_diseases %>% 
  mutate(rate = (count*100000)/population * (weeks_reporting/52)) %>% 
  filter(disease == "Measles" & state != "Alaska" & state != "Hawaii")

#Question 2.
ggplot(measlescal, aes(year, rate)) + geom_line() 
+ geom_vline(mapping = aes(), color = "green", 
  data = NULL, xintercept = 1965)

#This code will plot and show the rate of people infected by Measles per year. We
#used the function geom_vline to show the decrease in infections after the vaccine 
#was produced.

#Question 3.
 dat_caliFocus$yearBlock[dat_caliFocus$year == 1950] <- "1950’s"
 dat_caliFocus$yearBlock[dat_caliFocus$year == 1960] <- "1960’s"
 dat_caliFocus$yearBlock[dat_caliFocus$year == 1970] <- "1970’s"
 ggplot(data = dat_caliFocus ) 
 geom_bar(mapping = aes(x = state, + y = sqrt(count), 
 fill = yearBlock), position = "dodge",
 + stat = "identity") + theme(axis.text.x = element_text(angle = 90,
#                                                                                                 + hjust = 1, vjust=-0.01))
# We separated out the same variable with different labels to affect the 
# legend. after we did this, we used the geom_bar to map out all the 
# variables by the sqrt/witout sqrt for the years.

#Question 4.
measles$yearBlock[measles$year == 1950] <- "1950’s"
 measles$yearBlock[measles$year == 1960] <- "1960’s"
 measles$yearBlock[measles$year == 1970] <- "1970’s"
 ggplot(data = measles) + geom_histogram(mapping = aes(x = state,
+ y = sqrt(count), fill = yearBlock), binwidth = 10, position = "dodge",
+ stat = "identity") + theme(axis.text.x = element_text(angle = 90,  + hjust = 1, vjust=-0.01))

# Using the same method as the question above, we were able to create a graph 
# that utilizes the same information across all 50 states. The trend seemes to be the same across all states
# which is that it arises in the 50's and then increases in the 60's and then goes down in the 70's

#Question 5.
ggplot(data = measles) + geom_histogram(mapping = aes(x = state, y = year)) + geom_tile()



#Question 6.
> aut <- read.csv("mozilla.csv", stringsAsFactors = FALSE)
> aut[,2] <- as.numeric(aut[,2])
> aut[,7] <- as.numeric(aut[,7])
> autrate <- aut %>% mutate(rate = (Count/Population))
> View(autrate)

dat <- us_contagious_diseases %>% 
  mutate(rate = (count*100000)/population * (weeks_reporting/52))

ggplot(measlescal, aes(year, rate)) + geom_line() 
+ geom_vline(mapping = aes(), color = "green", 
             data = NULL, xintercept = 1965)
+ggplot(aut, aes(year, rate))
#Using this code you can see the different rates at which the two variables grow to fulfill this inquiry. The rate of Autism did increase however I am missing the data set from 1965 so I cannot conclude if the increase started from there, however it does seem to coincide by the rate increasing as more people get vaccinated. This however could just be due to the rising population.



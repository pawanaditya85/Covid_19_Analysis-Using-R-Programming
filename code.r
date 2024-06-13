rm(list =ls())

library("Hmisc")

data<- read.csv("C:/Users/pawan/Desktop/BD Project/COVID19_line_list_data.csv")

describe(data)

#Cleaning up the data
data$death_actual <- as.integer(data$death !=0)

#death rate 
sum(data$death_actual)/ nrow(data)

#age factor
dead = subset(data, death_actual==1)
alive= subset(data, death_actual==0)
 
#means of age of dead and alive
mean(dead$age, na.rm= TRUE)
mean(alive$age, na.rm=TRUE)

#Gender factor
men = subset(data, data$gender=="male")
women= subset(data, data$gender=="female")

#means of age of dead and alive
mean(men$death_actual, na.rm= TRUE)
mean(women$death_actual, na.rm=TRUE)

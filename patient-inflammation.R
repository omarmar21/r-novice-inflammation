package(readr)
library(readr)
data01 <- read.csv("data/data/inflammation-01.csv", header = FALSE, sep = ',')

#want to find out what type of data is used
class(data01)
?class()

#finding out the shame or dimension of data frame
dim(data01)

#	To select the first 10 columns, you use the command data01[1:10,]
data01[1:10,]
# To select the first 10 columnsof rows 5 to 10 you will use data01[5:10, 1:10]
data01[5:10, 1:10]

# first row, all of the columns
patient_1 <- data01[1, ]
# max inflammation for patient 1
max(patient_1)
sum(patient_1)
# max inflammation for patient 1
max(data01[1, ])
# What command will allow you to find the minimum inflammation for patient 2 on day 7.
min(data01[2,7])

#comparing
max(data01[1, ])

mean(data01 [1, ])

mean(as.numeric(data01[1, ]))

#calculate the mean patient inflammation= this will be the rowns mean
avg_patient_inflammation <- apply(data01, 1, mean)
# this comman allows us to obtain the mean days of inflammation of each column
avg_day_inflammation <- apply(data01, 2, mean)

plot(avg_day_inflammation)

max_day_inflammation <- apply(data01, 2, max)
plot(max_day_inflammation)
min_day_inflammation <- apply(data01, 2, min)
plot(min_day_inflammation)


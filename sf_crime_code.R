#Read in the data
train <- read.csv("~/Kaggle Competitions/San Francisco Crime Classification/San Francisco Crime Data/train.csv")

#Install and call the lubridate and xts package
library(lubridate)
library(xts)

#format the date and time components
train$Dates <- strptime(train$Dates, format = "%Y-%m-%d %H:%M:%S")

#double check that the date is in POSIXlt format
class(train$Dates)

#add variables for year, month, day, hour, minutes, and seconds
train$year=year(train$Dates)
train$month=month(train$Dates)
train$day=day(train$Dates)
train$hour=hour(train$Dates)
train$minutes=minutes(train$Dates)
train$seconds=second(train$Dates)
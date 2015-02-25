
# data <- read.csv("~/workspace/data/ga-hoolihan.csv", sep=",")
data <- read.csv("~/workspace/data/ga2-hoolihan.csv", sep=",")
data$Day.Index <- as.Date(data$Day.Index, format="%m/%d/%Y")

plot(data$Day.Index, 
     data$Pageviews,
     xlab = "Date",
     type = "b")


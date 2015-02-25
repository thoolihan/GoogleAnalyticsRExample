
data <- read.csv("~/workspace/data/ga2-hoolihan.csv", sep=",")

with(data, {
     Day.Index <- as.Date(Day.Index, format="%m/%d/%Y")
     
     plot(Day.Index, 
          Pageviews,
          xlab = "Date",
          type = "b")
})

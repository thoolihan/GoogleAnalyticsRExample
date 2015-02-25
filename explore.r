
data <- read.csv("~/workspace/data/ga2-hoolihan.csv", sep=",")

with(data, {
     Day.Index <- as.Date(Day.Index, format="%m/%d/%Y")
     
     plot(Day.Index, 
          Pageviews,
          xlab = "Date",
          type = "b",
          col = "blue",
          main = "Google Analytics",
          ylim = c(0, 200)) 
     
     abline(a = 100, 
            b = 0,
            col = "gray")
})

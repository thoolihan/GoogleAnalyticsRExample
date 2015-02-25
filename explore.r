
data <- read.csv("~/workspace/data/ga2-hoolihan.csv", sep=",")

with(data, {
     Day.Index <- as.Date(Day.Index, format="%m/%d/%Y")

     plot(Day.Index, 
          Pageviews,
          xlab = "Date",
          type = "b",
          pch = 21,
          bg = "navy",
          col = "navy",
          main = "Google Analytics",
          ylim = c(0, 200)) 
     
     xarea <- c(Day.Index, rev(Day.Index))
     yarea <- c(Pageviews, rep(0, nrow(data)))
     polygon(xarea, yarea, col = rgb(0.3, 0.8, 1, 0.5), border=NA)     
     
     abline(a = 100, 
            b = 0,
            col = "gray")
})

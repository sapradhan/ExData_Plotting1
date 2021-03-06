source("load_data.R")
p <- load_data()

png(filename = "plot3.png", width = 480, height = 480)

with (p, {
  plot(
    datetime, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = ""
  )
  points(datetime, Sub_metering_2, type = "l", col = "red")
  points(datetime, Sub_metering_3, type = "l", col = "blue")
})

legend(
  "topright",
  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
  col = c("black", "red", "blue"), lty = c(1,1,1)
)

dev.off()
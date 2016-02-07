source("load_data.R")
p <- load_data()

png(filename = "plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))

with (p, plot(
  datetime, Global_active_power, type = "l",
  ylab = "Global Active Power",
  xlab = ""
))

with (p, plot(datetime, Voltage, type = "l", ylab = "Voltage"))

with (p, {
  plot(
    datetime, Sub_metering_1, type = "l",
    ylab = "Energy sub metering", xlab = ""
  )
  points(datetime, Sub_metering_2, type = "l", col = "red")
  points(datetime, Sub_metering_3, type = "l", col = "blue")
})

legend(
  "topright",
  legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
  col = c("black", "red", "blue"), lty = c(1,1,1), bty = "n"
)

with (p, plot(
  datetime, Global_reactive_power, 
  type = "l", ylab = "Global Reactive Power"
))

dev.off()
source("load_data.R")
p <- load_data()

png(filename = "plot2.png", width = 480, height = 480)

with (
  p, plot(
    datetime, Global_active_power,
    type = "l",
    ylab = "Global Active Power (kW)", xlab = ""
  )
)

dev.off()
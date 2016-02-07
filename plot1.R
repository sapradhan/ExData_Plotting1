source("load_data.R")
p <- load_data()

png(filename = "plot1.png", width = 480, height = 480)

with(
  p, hist(
    x = Global_active_power, 
    col = "red", 
    xlab = "Global Active Power (kW)", 
    main = "Global Active Power"
  )
)

dev.off()
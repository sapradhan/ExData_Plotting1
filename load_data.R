load_data <- function() {

if(!file.exists("household_power_consumption.txt")) {
  download.file(
    "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "power_consumption.zip"
  )
  unzip("power_consumption.zip")
}

names <- read.table(
  "household_power_consumption.txt",
  header = TRUE, sep = ";", nrows = 1
)

p <- read.table(
  "household_power_consumption.txt",
  skip = 66637, nrows = (69517 - 66637),
  sep = ";", na.strings = "?",
  col.names = colnames(names), stringsAsFactors = FALSE
)

p$datetime = strptime(paste(p$Date, p$Time), "%d/%m/%Y %T")

p
}
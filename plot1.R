
  colDefs <- c('character', 'character', 'numeric','numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric')
  hpc <- read.table('household_power_consumption.txt', sep=';', header=TRUE, colClasses = colDefs, na.strings='?')
  
  hpc$DateTime <- strptime(paste(hpc$Date, hpc$Time), "%d/%m/%Y %H:%M:%S")
  hpc <- subset(hpc, as.Date(DateTime) >= as.Date("2007-02-01") & as.Date(DateTime) <= as.Date("2007-02-02"))
  
  png("plot1.png", height=480, width=480)
  
  hist(hpc$Global_active_power, col='red', main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)')
  
  dev.off()


  
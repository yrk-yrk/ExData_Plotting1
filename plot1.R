data <- read.csv('~/Downloads/household_power_consumption.txt', sep = ";" , header = TRUE, as.is = TRUE);
data[,1] <- as.Date(data[,1], format = "%d/%m/%Y")
mydates <- as.Date(c("2007-02-01", "2007-02-02"))
data_1 <- subset(data, data$Date %in% mydates)
data_1$Global_active_power<- as.numeric(data_1$Global_active_power, col = 'orange')
x11()
par(mfcol = c(1,1) )

hist(data_1$Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = 'red')
dev.copy(png, file='plot1.png')
dev.off()
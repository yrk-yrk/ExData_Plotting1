data <- read.csv('~/Downloads/household_power_consumption.txt', sep = ";" , header = TRUE, as.is = TRUE);
data[,1] <- as.Date(data[,1], format = "%d/%m/%Y")
mydates <- as.Date(c("2007-02-01", "2007-02-02"))
data_1 <- subset(data, data$Date %in% mydates)
data_1$Global_active_power<- as.numeric(data_1$Global_active_power, col = 'orange')
data_1$Time<-as.Date(strptime(data_1$Time, format = "%H:%M:%S"))
x11()
par(mfcol = c(1,1) )
plot(data_2$Global_active_power, xaxt = "n", type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
axis(1, at=c(1,length(data_1$Global_active_power)/2,length(data_1$Global_active_power) ), labels=c("Thu", "Fri", "Sat"))
dev.copy(png, file='plot2.png')
dev.off()
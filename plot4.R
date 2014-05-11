household_power_consumption <- read.csv("C:/Users/Mengxia/Downloads/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";")
hpc<-household_power_consumption
attach(hpc)
mydata <- hpc[66638:69517, ]
dim(mydata)
Global_active_power <- as.numeric(mydata$V3)
time <- c(1:2880)
par(mfrow=c(2,2))
hist(Global_active_power,col="red", main="Global Active Power", xlab= "Global Active Power(kilowatt)")
plot(V2,Global_active_power, ylab="Global Active Power(kilowatt)")
plot(time, V5, type="l", ylab="Voltage", xlab="datetime")
plot(time,Global_active_power,type="l", ylab="Global_active_power", xlab="datetime")

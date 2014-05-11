household_power_consumption <- read.csv("C:/Users/Mengxia/Downloads/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";")
hpc<-household_power_consumption
attach(hpc)
mydata <- hpc[66638:69517, ]
dim(mydata)
Global_active_power <- as.numeric(mydata$V3)
time <- c(1:2880)
plot(V2,Global_active_power, ylab="Global Active Power(kilowatt)")

household_power_consumption <- read.csv("C:/Users/Mengxia/Downloads/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";")
hpc<-household_power_consumption
attach(hpc)
mydata <- hpc[66638:69517, ]
dim(mydata)
Global_active_power <- as.numeric(mydata$V3)
plot1 <- hist(Global_active_power,col="red", main="Global Active Power", xlab= "Global Active Power(kilowatt)")
dev.print(png, file = "plot1.png", width = 480, height = 480)

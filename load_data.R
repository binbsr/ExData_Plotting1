library(httr) 
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
dataFolder <- "data"
if(!file.exists(dataFolder)){
	dir.create(dataFolder)
} 

dataFileArchive <- paste(getwd(), "/data/household_power_consumption.zip", sep = "")
if(!file.exists(dataFileArchive)){
	download.file(url, dataFileArchive)
}
unzip(dataFileArchive, list = FALSE, overwrite = TRUE, exdir = "data")

#Download and unzip if dataset not present
#Requires CURL
if(!file.exists("household_power_consumption.txt")) {
  file.url <- "https://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip"
  download.file(url=file.url, destfile = "household_power_consumption.zip", method="curl")
  dateDownloaded <- date()
  unzip(zipfile = "household_power_consumption.zip")
}
#Read the dates 1/2/2007 and 2/2/2007 of the dataset into a dataframe
ds <- read.csv2("household_power_consumption.txt", skip=66636, nrow=2880, 
                colClasses=c("character","character",rep("numeric",7)),  #Set the types of the columns    
                stringsAsFactors=FALSE, na.strings="?", dec='.')         #Avoid factors, set "?" as NA 
                                                                         #and use '.' as decimal separator (necessary in Spain at least)

#Use the names of the header of the dataset as names for the dataframe
names(ds) <- names(read.csv2("household_power_consumption.txt", nrow=1, header=TRUE))

#Join together Date and Time and parse it from string to time format
ds$DateTime <- strptime(paste(ds$Date,ds$Time), format="%d/%m/%Y %T")

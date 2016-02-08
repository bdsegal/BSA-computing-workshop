library(readr)
library(data.table)

home <- dirname(getwd())
dataPath <- paste(home,"/data/",sep="")
setwd(dataPath)
getwd()

## View file data from within R
list.files()
csvFiles <- list.files(pattern = "*.csv")
csvFiles

info <- file.info(path = paste(csvFiles, sep=""))

file.info(csvFiles)


size <- info["H10.csv","size"]
size/1e6

## Compare read-in times
t1 <- system.time(data <- read.csv(paste(dataPath, "H10.csv", sep = "")))[3]
t2 <- system.time(data <- read_csv(paste(dataPath, "H10.csv", sep = "")))[3]
t3 <- system.time(data <- fread(paste(dataPath, "H10.csv", sep = "")))[3]

compare <- c(t1, t2, t3)
names(compare) <- c("read.csv", "read_csv", "fread")

signif(compare[1] / compare, 2)

barplot(compare, ylab = "time (sec)", 
	main = paste("Time to read in ", round(size/1e6)," MB csv file", sep = ""))

### Note: read-in times can vary. For a better comparison, you can do a little simulation study (read in the same data many times means, quantiles, and standard deviations of system.time)

# Now try reading in a larger file
# note: if you have <= 4GB RAM on a windows machine, this dataset
# might not fit on your memory

# Code for downloading and unzipping file from NIPS/AI database

data_path <- "C:/Users/Segal/Dropbox/computing_workshop/data"
setwd(data_path)

csv_files <- list.files(pattern = "*.csv")
csv_files

info <- file.info(csv_files)
info

size <- info["train.csv","size"]
size/1e6

# compare read-in times -- pull up task manager and watch memory load
# while R is working, take time for questions
# and short discussion on R style guide (cammelCase vs underscore) and
# historica use of using "."
# refer to Google style guide and Hadley Wickham's style guide
# emphasize consistency

# Crashes my computer, which has 8 GB of RAM
# t1 <- system.time(data <- read.csv("train.csv"))[3]

t2 <- system.time(data <- read_csv("train.csv"))[3]
rm(data)
gc()

t3 <- system.time(data <- fread("train.csv"))[3]
rm(data)
gc()

compare <- c(t2, t3)
names(compare) <- c("read_csv","fread")

barplot(compare, ylab = "time (sec)", 
	main = paste("Time to read in ", prettyNum(round(size / 1e6), big.mark = ","), " MB csv file", sep = ""))

barplot(compare, ylab = "time (sec)", 
	main = paste("Time to read in ", round(size / 1e9), " GB csv file", sep = ""))

	
data <- read_csv("train.csv")
rm(data)
gc()

# If data is too large to read into memory, sample portions of data
# use gawk to sample data
# use json package to read-in json format

# data manipulation
# tidyr
# magriter (Wickham's package)
# sql packages for R
# reshape2
# apply, tapply, sapply, lapply, vapply, etc.

# USE dput(data) to create ASCII file for reproducible examples!



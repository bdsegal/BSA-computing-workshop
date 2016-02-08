# download and unzip files for workshop
# See html document for explanantion

library(R.utils)

parent <- dirname(getwd())

# EIA residential energy consumption survey (RECS) 27 MB
download.file(url="http://www.eia.gov/consumption/residential/data/2009/csv/recs2009_public.csv",
  mode="wb",
  destfile=file.path(parent,'data','recs2009.csv'))

# Porto taxi cab data, 520 MB zip file
download.file(url="https://archive.ics.uci.edu/ml/machine-learning-databases/00339/train.csv.zip",
  destfile=file.path(parent,'data','train.zip'))

unzip("train.zip")

# weather data 14 MB gz file
download.file(url="http://www1.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/1887.csv.gz",
  mode="wb",
  destfile=file.path(parent, 'data', '1887.csv.gz'))

# unzip, but don't remove the original gz file
gunzip("1887.csv.gz", remove=FALSE)




# To do:
# add time comparison of reading in unzipped files
# any issues using readr to read in the recs2009 data?
# try giving url to read.csv for smaller file just to be sure
# 

library(readr)
library(data.table)

data.b <- read.csv("http://www.eia.gov/consumption/residential/data/2009/csv/recs2009_public.csv")
data.r <- read_csv("recs2009.csv")
data.t <- fread("recs2009.csv")

unique(database$REGIONC)
barplot(tapply(database$KWH, database$REGIONC, mean))

str(data.b)

head(data.b)


data <- read_csv(gzfile(file.path(parent, 'data', '1887.csv.gz')))
data <- fread(file.path(parent, 'data', '1887.csv.gz'))

train <- read_csv("train.zip")
setwd(file.path(parent,'data'))
train <- read_csv('unzip train.zip')



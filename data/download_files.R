# download and unzip files for workshop
# See html document for explanantion

library(R.utils)

parent <- dirname(getwd())

# EIA residential energy consumption survey (RECS) 27 MB csv file
download.file(url = "http://www.eia.gov/consumption/residential/data/2009/csv/recs2009_public.csv",
  mode = "wb",
  destfile = "recs2009.csv")

# data description for RECS, 59 KB file
download.file(url = "http://www.eia.gov/consumption/residential/data/2009/csv/public_layout.csv",
  mode = "wb",
  destfile = "public_layout.csv")
  
# Porto taxi cab data, 520 MB zip file
download.file(url = "https://archive.ics.uci.edu/ml/machine-learning-databases/00339/train.csv.zip",
  destfile = "train.zip")

unzip("train.zip")

# # weather data, 206 MB gz file
# download.file(url = "http://www1.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/2010.csv.gz",
  # mode = "wb",
  # destfile = "2010.csv.gz")

# # unzip, but don't remove the original gz file
# gunzip("2010.csv.gz", remove=FALSE)
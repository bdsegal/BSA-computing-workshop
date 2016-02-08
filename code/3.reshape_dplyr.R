library(reshape2)
library(readr)
library(dplyr)

parent <- dirname(getwd())

data <- read_csv(file.path(parent, 'data', 'recs2009.csv'))

# get the layout file
layout <- read.csv("http://www.eia.gov/consumption/residential/data/2009/csv/public_layout.csv")

str(layout)
colTypes <- as.character(layout$Variable.Type)
colTypes <- gsub("Numeric","d", colTypes) # d for double
colTypes <- gsub("Character","c", colTypes) # c for character
colTypes <- paste(colTypes, collapse="") # concatenate into 1 string

data <- read_csv(file.path(parent, 'data', 'recs2009.csv'),
  col_types = colTypes) # no more problems

  

prob <- problems(data)

data[,unique(prob$col)]

prob[1:nrow(prob),]

data2 <- read.csv(file.path(parent, 'data', 'recs2009.csv'))

str(data2)
type(data[,1])

str(data2)
i <- 1
data2[prob$row[i], prob$col[i]]
data[prob$row[i], prob$col[i]]

slice(data2, unique(prob$row) ) 

str(data)
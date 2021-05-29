# Set WD
project_wd = 'C:/dev/r_youtube'
setwd(project_wd)

# Remove al objects from memory
rm(list=ls())

LungCapData <- read.table('./data/LungCapData.txt', header=TRUE, sep='\t', stringsAsFactors=TRUE)
attach(LungCapData)

Age[1:5]
# Create an array from "Age" based on a condition
temp <- Age>15
temp[1:5]
temp2 <- as.numeric(Age>15) # 0 for false, 1 for true
temp2[1:5]

FemSmoke <- Gender=="female" & Smoke=="yes"
FemSmoke[1:5]

# Extend original data by attaching extra rows or columns
MoreData <- cbind(LungCapData, FemSmoke)
MoreData[1:5,]

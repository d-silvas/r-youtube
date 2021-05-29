# help(read.table)

LungCapData <- read.table('./data/LungCapData.txt', header=TRUE, sep='\t', stringsAsFactors=TRUE)

# Dimensions
dim(LungCapData)
# See first or last 5 rows
head(LungCapData)
tail(LungCapData)
# Get some rows
LungCapData[c(1, 2, 3),]
LungCapData[1:3,]
# Check column names
names(LungCapData)

# $ extracts a variable from a dataset
# mean(LungCapData$Age)

# ATTACHING DATA
# (Warning! new variables will be created which could be overwritten)
attach(LungCapData)
mean(Age)
# detach(LungCapData)

# Get type of a variable
class(LungCap)
class(Age)
class(Smoke)
class(Gender)
class(Caesarean)
# For "factors"
levels(Smoke)
levels(Gender)

# Summary of the data
summary(LungCapData)

# Force a variable to be of type factor (otherwise it will be interpreted as numeric)
x <- as.factor(c(0, 1, 1, 0, 0, 0, 1))
class(x)
summary(x)
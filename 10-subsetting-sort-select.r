LungCapData <- read.table('./data/LungCapData.txt', header=TRUE, sep='\t', stringsAsFactors=TRUE)
attach(LungCapData)

# Dimensions, subsetting (learned)
names(LungCapData)
dim(LungCapData)
length(Age)
Age[11:14]
LungCapData[11:14,]

# Subsetting
levels(Gender)
mean(Age[Gender=='female'])
mean(Age[Gender=='male'])
FemData <- LungCapData[Gender=='female',]
MaleData <- LungCapData[Gender=='male',]
summary(Gender)
dim(FemData)
dim(MaleData)
FemData[1:3,]
MaleData[1:3,]

MaleOver15 <- LungCapData[Gender=='male' & Age>15,]
dim(MaleOver15)
MaleOver15[1:3,]

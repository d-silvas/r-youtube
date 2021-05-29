source('./_init.r')

LungCapData <- read.table('./data/LungCapData.txt', header=TRUE, sep='\t', stringsAsFactors=TRUE)
attach(LungCapData)

# Frequency table
count <- table(Gender)
# Percentages
percent <- table(Gender)/725

barplot(count)
barplot(percent, main="Title", xlab="Gender", ylab="%", las=1, names.arg=c('Male', 'Female'))
barplot(percent, main="Title", xlab="%", ylab="Gender", las=1, names.arg=c('Male', 'Female'), horiz=TRUE)

pie(count, main="TITLE here")
box()

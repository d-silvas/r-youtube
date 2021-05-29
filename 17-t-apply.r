source('_init.r')

LungCapData <- read.table('./data/LungCapData.txt', header=TRUE, sep='\t', stringsAsFactors=TRUE)
attach(LungCapData)

# ?tapply

# Calculate the mean age for smoker/non-smoker. Simplified by default
tapply(X=Age, INDEX=Smoke, FUN=mean)

# Same but not simplified
tapply(X=Age, INDEX=Smoke, FUN=mean, simplify=FALSE)
# We could get the same using [], but tapply is more efficient
mean(Age[Smoke=='no'])
mean(Age[Smoke=='yes'])

tapply(X=Age, INDEX=Smoke, FUN=quantile, probs=c(0.25, 0.50, 0.75), simplify=TRUE)

# We can subset based on multiple variables/vectors: calculate the mean Age for Smoker/NonSmoker and male/female
tapply(X=Age, INDEX=list(Smoke, Gender), FUN=mean, na.rm=TRUE)
# We could do the same like this:
mean(Age[Smoke=='no' & Gender=='female'])
mean(Age[Smoke=='yes' & Gender=='female'])
mean(Age[Smoke=='no' & Gender=='male'])
mean(Age[Smoke=='yes' & Gender=='male'])

# "by" is similar
by(data=Age, INDICES=list(Smoke, Gender), FUN=mean, na.rm=TRUE, simplify=TRUE)

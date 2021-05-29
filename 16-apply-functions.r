source('_init.r')

StockData <- read.table(file='data/Stock.csv', sep=',', header=TRUE, row.names=1)
StockData

# Help
# ?apply

# Calculate mean of each of the columns (MARGIN=1 for rows, 2 for columns)
apply(X=StockData, MARGIN=2, FUN=mean)
# Calculate the mean price of each stock, removing any NAs
apply(X=StockData, MARGIN=2, FUN=mean, na.rm=TRUE)

# Do the same, but use colMeans instead (this function is faster as it's been optimized for this task)
colMeans(StockData, na.rm=TRUE)

# Find max of each column
apply(X=StockData, MARGIN=2, FUN=max, na.rm=TRUE)

# Find 20 and 80 percentiles. "probs" is an argument to let R know which percentiles to calculate
apply(X=StockData, MARGIN=2, FUN=quantile, probs=c(0.2, 0.8), na.rm=TRUE)

# Draw a plot for each of the columns
apply(X=StockData, MARGIN=2, FUN=plot, type="l", main="stock", ylab="Price", xlab="Day")

# Sums of the rows
apply(X=StockData, MARGIN=1, FUN=sum, na.rm=TRUE)
rowSums(StockData, na.rm=TRUE)

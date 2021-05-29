# CSV, comma-separated
# We can use file.choose() instead of the file path
data1 <- read.table('data/LungCapData.csv', header=TRUE, sep=',')
data2 <- read.csv('data/LungCapData.csv', header=TRUE)

# Tab-delimited text file
data3 <- read.delim('data/LungCapData.txt', header=TRUE)

# Note: these were just wrappers around read.table():
# https://stackoverflow.com/questions/12828438/read-csv-vs-read-table

# EXCEL file
# Do it THROUGH MENU:
# https://www.youtube.com/watch?v=JYVWufSQ4OI&list=PLqzoL9-eJTNDw71zWePXyHx3_cm_fMP8S&index=6

# EXPORT
write.table(data1, file='data/Exported.csv', row.names=FALSE, sep=',')
# Also write.csv...

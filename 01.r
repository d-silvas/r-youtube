# https://stackoverflow.com/questions/11579765/how-to-clean-up-r-memory-without-the-need-to-restart-my-pc
rm(list = ls())
# .rs.restartR()

# Assign a value to an object
x = 11
# See what's in x
print(x)
# Also see what's in x
x
# Object names can have dots
x.1 <- 14
# Objects can contain strings
strobj <- 'wololoo'

# To assign values to objects we may also use
y <- 7
# R overwrites objects
y <- 9

# See objects in workspace memory
# ls()
# Remove an object from the workspace memory
# rm(y)
# https://stackoverflow.com/questions/1395270/determining-memory-usage-of-objects
# sort(sapply(ls(), function(x) format(object.size(get(x)), unit = 'auto')))

# Operations
sqrt(x)
log(x)
exp(x)
log2(x)
abs(x)
# https://stackoverflow.com/questions/32123499/is-there-a-package-or-technique-availabe-for-calculating-large-factorials-in-r
# z <- Rmpfr::factorialMpfr(20000)
# z
# zz <- gmp::factorialZ(20000)
# zz

###################
#
# vECTORS AND MATRICES
#
###################

# Create vector with the "c" command
x1 <- c(1, 3, 5, 7, 9)
gender <- c('male', 'female')
# Create sequences
2:7
seq(from=2, to=7, by=1)
# Create a vector repeating numbers or characters
rep(3, times=10)


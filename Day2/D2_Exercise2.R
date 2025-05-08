# use readRDS to load my_day2matrix.rd
m <- readRDS(file = "/project/shared/r/1_r_data_science/2-base/my_day2matrix.rds")

# Make a new column, containing the row sums from m, and append it to m
m1 <- cbind(m, Row_sum = rowSums(m)) 

# Load "ToothGrowth" inbuilt data set
data("ToothGrowth")
help(ToothGrowth)

#What class of object is ToothGrowth? - It is a dataframe

#What type of data is in each column? 
  #Col1: number
  #Col2: factor with 2 levels (OJ or VC)
  #Col3: number

# What is mean tooth length across all observations?
mean_length <- mean(ToothGrowth$len)

# What is the max tooth length?
max_length <- max(ToothGrowth$len)

# Min tooth length?
min_length <- min(ToothGrowth$len)


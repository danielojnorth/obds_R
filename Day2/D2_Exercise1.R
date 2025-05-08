#Define three objects
a <- list(1:10, "purple", 20)
b <- "I am object b"
d <- 123

#Save all objects currently in workspace to a.RData file
save.image(file = "Exercise1_workspace.RData")

#Save a single object (a in this case) to a .rds file
saveRDS(a, file = "exercise1_a.rds")

#Remove an object from my workspace (in this case - d) and demonstrate it
# is removed
rm(d)
print(d)

# Remove all objects from workspace
rm(list = ls())

# Display working directory
getwd()

# Make a new working directory
dir.create("Exercise1_wd")

# Set directory to new working directory
setwd("/project/grte3920/2_R/R_week_1/base_r_2/Exercise1_wd/")

#Restore objects in .RData file (note: full path required as in new directory)
load("/project/grte3920/2_R/R_week_1/base_r_2/Exercise1_workspace.RData")

#Restore object in .RDS file with new name
a_restored <- readRDS(file = "/project/grte3920/2_R/R_week_1/base_r_2/exercise1_a.rds")

#Set wd back to more useful directory
setwd("/project/grte3920/2_R/R_week_1/base_r_2/")
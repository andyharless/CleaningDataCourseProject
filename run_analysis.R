library("data.table")

# Read in the raw data
Xtest <- fread("UCI HAR Dataset/test/X_test.txt")
Ytest <- fread("UCI HAR Dataset/test/y_test.txt")
Stest <- fread("UCI HAR Dataset/test/subject_test.txt")
Xtrain <- fread("UCI HAR Dataset/train/X_train.txt")
Ytrain <- fread("UCI HAR Dataset/train/y_train.txt")
Strain <- fread("UCI HAR Dataset/train/subject_train.txt")
activities <- fread("UCI HAR Dataset/activity_labels.txt")

# Combine activity and subject labels with measurements
testdata <- cbind(Ytest, Stest, Xtest)
traindata <- cbind(Ytrain, Strain, Xtrain)

# Combine training and testing data
alldata <- rbind(traindata, testdata)

#  "variable_names.txt" is a text file I created containing 3 columns as follows:
#     1. the numbers of the raw data columns that contain means and standard deviations
#     2. the original descriptions of those columns from "features.txt"
#     3. the variable names that I am using for those columns
variables <- fread("variable_names.txt") 
columns <- unname(unlist(variables[,1]))   # Columns to extract (means & stdevs)
vnames <- unname(unlist(variables[,3]))    # New variable names

# Extract means and standard deviations from data
extract <- c(1, 2, columns + 2)
tidydata <- alldata[,extract,with=FALSE]

# Apply variable names
names(tidydata) <- c("Activity", "Subject", vnames)

# Convert activity labels to descriptive activity names
tidydata$Activity <- activities[tidydata$Activity,2]

# Write the tidy data to a file
fwrite(tidydata, "ucihar.csv")


# Calculate the average of each variable for each activity and subject
len <- dim(tidydata)[2]
tidymeans = aggregate(tidydata[,3:len],by=list(tidydata$Activity,tidydata$Subject), FUN=mean)
names(tidymeans)[[1]] <- "Activity"
names(tidymeans)[[2]] <- "Subject"

# Write averages to a file
fwrite(tidymeans, "uciharMeans.csv")

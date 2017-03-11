# CleaningDataCourseProject
Course Project for Coursera "Getting and Cleaning Data" course

The script “run_analysis.R” does the following:

1. Concatenates the training and test sets from the UCI HAR data into 
a single data set and adds the subject identifiers and activity labels.

2. Extracts the data on the mean and standard deviation for each type of measurement.

3. Replaces the activity numbers with descriptive activity names.

4. Gives the measurement data descriptive variable names.

5. Stores the result in memory in a data table called "tidydata" and 
on disk in a CSV file called "ucihar.csv"

6. Also creates a second data set 
with the average of each variable for each activity for each subject.

7. Stores the second data set in memory in a data table called "tidymeans" and
on disk in a CSV file called "uciharMeans.csv"


The script uses a file called "variable_names.txt" (created by hand in a text editor 
from the raw file "features.txt") which contains the original column numbers of 
the measurements extracted and both
the original descriptions given in "features.txt" and the new variable names.
Each variable is described on a separate line, as in the original file.
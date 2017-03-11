# CleaningDataCourseProject
## Course Project for Coursera "Getting and Cleaning Data" course

FILES:

- README.md:  this file

- [CodeBook.md](CodeBook.md):  Descriptions of output data.

- [ucihar.csv](ucihar.csv):  Output, tidy data (see [CodeBook.md](CodeBook.md)).

- [uciharMeans.csv](uciharMeans.csv):  Means of output data by subject and activity.

- [uciharMeans.txt](uciharMeans.txt):  Means of output data by subject and activity.
  (This file was created to complete the assignment after I read the submission page.
  The assignment page doesn't specify the format, and generally I prefer CSV.)

- [run_analysis.R](run_analysis.R):  R script to perform the cleaning procedure.
   (Note: requires [variable_names.txt](variable_names.txt) and assumes original
   Dataset.zip has been unzipped into the current working directory, so that
   the "UCI HAR Dataset" directory is a direct child thereof.)
   
- [downloadSamsungData.R](downloadSamsungData.R):  R script to download and unzip
  the input data into the current directory.
   
- [variable_names.txt](variable_names.txt):  File created by hand in a text editor
  to give the columns to extract from the input data and the new variable names.
  Required by [run_analysis.R](run_analysis.R)
  
- [features_info.txt](features_info.txt):  Copied from the UCI HAR documentation.
  Referenced by [CodeBook.md](CodeBook.md).

- [UCI_README.txt](UCI_README.txt):  Copied from the UCI HAR documentation (originally
  called "README.txt").  Referenced by [CodeBook.md](CodeBook.md).
  
- [features.txt](features.txt):  Copied from the UCI HAR documentation.
  
- [variableDescriptions.md](variableDescriptions.md):  
  (redundant to CodeBook.md) table of columns in output data

- [columnTable.md](columnTable.md):
  (redundant to CodeBook.md) concordance of columns in original data with output data  



The script “run_analysis.R” does the following:

1. Concatenates the training and test sets from the UCI HAR data into 
a single data set and adds the subject identifiers and activity labels.

2. Extracts the data on the mean and standard deviation for each type of measurement.

3. Replaces the activity numbers with descriptive activity names.

4. Gives the measurement data descriptive variable names.

5. Stores the result in memory in a data table called "tidydata" and 
on disk in a CSV file called [ucihar.csv](ucihar.csv)

6. Also creates a second data set 
with the average of each variable for each activity for each subject.

7. Stores the second data set in memory in a data table called "tidymeans" and
on disk in a CSV file called [uciharMeans.csv](uciharMeans.csv).


The script uses a file called [variable_names.txt](variable_names.txt)
(created by hand in a text editor  from the raw file 
[features.txt](features.txt)) which contains the original column numbers of 
the measurements extracted and both the original descriptions 
given in [features.txt](features.txt) and the new variable names.
Each variable is described on a separate line, as in the original file.

The file [CodeBook.md](CodeBook.md) contains more detail on the contents of
the output files [ucihar.csv](ucihar.csv) and [uciharMeans.csv](uciharMeans.csv).

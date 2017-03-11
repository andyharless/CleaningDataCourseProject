# Code Book
## Describing data in ucihar.csv, uciharMeans.csv, and uciharMeans.txt,
## as produced by the script run_analysis.R

These files contain heavily preprocessed data from accelerometer and gyroscope readings
from smartphones of subjects performing six activities
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

This code book extends the original descriptions contained in the UCI HAR dataset 
documentation files README.txt (copied to this repository as 
[UCI_README.txt](UCI_README.txt)), [features.txt](features.txt), and 
[features_info.txt](features_info.txt).  See [UCI_README.txt](UCI_README.txt)
and [features_info.txt](features_info.txt) for
for a detailed description of how the measurements were collected and 
preprocessed.  

The original data files contain a number of statistics for each
observation window.  The columns selected for [ucihar.csv](ucihar.csv) 
contain only means and standard deviations.  In addition, each record in this file
includes the label of the activity and the subject ID number.  Also, the training data
and testing data, separate in the original files, have been concatenated together.

The file [uciharMeans.csv](uciharMeans.csv)
(duplicated in R table text format in [uciharMeans.txt](uciharMeans.txt)) 
contains the mean, for each Activity-Subject
pair, of the data in [ucihar.csv](ucihar.csv).  (Thus the data in 
[uciharMeans.csv](uciharMeans.csv) represent "means of means" and
"means of standard deviations", with the statistics first computed by observation
window and then across observation windows by activity-subject pair.)

Since each feature was normalized to be in the range \[-1,1\] (see
[UCI_README.txt](UCI_README.txt)), the features can be considered 
to be expressed in units of "each relative to its own maximum and minimum values."
Each feature column in [ucihar.csv](ucihar.csv) (that is, each column except the
first two, which represent Activity and Subject) has a minimum of -1 and a maximum of 1.
(Note that the same is not true of [uciharMeans.csv](uciharMeans.csv),
since these data have been averaged after having been normalized.)

The table below shows the variables in the new data sets.  The columns in 
[ucihar.csv](ucihar.csv) and [uciharMeans.csv](uciharMeans.csv) contain the same
variable names, but the latter file contains only the means by Activity and Subject.
Thus it has only one row for each Activity-Subject combination.  The former file,
by contrast, contains one row for each observation window.  (As per
[UCI_README.txt](UCI_README.txt), the sensor signals--after pre-processing--were sampled
in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window).)

## Description of Variables in New Data Set

Variable Name | Meaning
--------------|--------------
Activity | Label of Subject's Current Activity (Walking, Sitting, Standing, etc.)
Subject | Subject ID Number
BodyAccelerationMeanX | Mean of Time-Domain Body Acceleration Signal X direction
BodyAccelerationMeanY | Mean of Time-Domain Body Acceleration Signal Y direction
BodyAccelerationMeanZ | Mean of Time-Domain Body Acceleration Signal Z direction
BodyAccelerationStdX | Standard Deviation of Time-Domain Body Acceleration Signal X direction
BodyAccelerationStdY | Standard Deviation of Time-Domain Body Acceleration Signal Y direction
BodyAccelerationStdZ | Standard Deviation of Time-Domain Body Acceleration Signal Z direction
GravityAccelerationMeanX | Mean of Time-Domain Gravity Acceleration Signal X direction
GravityAccelerationMeanY | Mean of Time-Domain Gravity Acceleration Signal Y direction
GravityAccelerationMeanZ | Mean of Time-Domain Gravity Acceleration Signal Z direction
GravityAccelerationStdX | Standard Deviation of Time-Domain Gravity Acceleration Signal X direction
GravityAccelerationStdY | Standard Deviation of Time-Domain Gravity Acceleration Signal Y direction
GravityAccelerationStdZ | Standard Deviation of Time-Domain Gravity Acceleration Signal Z direction
BodyAccelerationJerkMeanX | Mean of Time-Domain Body Accelerometer Jerk Signal X direction
BodyAccelerationJerkMeanY | Mean of Time-Domain Body Accelerometer Jerk Signal Y direction
BodyAccelerationJerkMeanZ | Mean of Time-Domain Body Accelerometer Jerk Signal Z direction
BodyAccelerationJerkStdX | Standard Deviation of Time-Domain Body Accelerometer Jerk Signal X direction
BodyAccelerationJerkStdY | Standard Deviation of Time-Domain Body Accelerometer Jerk Signal Y direction
BodyAccelerationJerkStdZ | Standard Deviation of Time-Domain Body Accelerometer Jerk Signal Z direction
BodyGyroscopeMeanX | Mean of Time-Domain Body Gyroscope Signal X direction
BodyGyroscopeMeanY | Mean of Time-Domain Body Gyroscope Signal Y direction
BodyGyroscopeMeanZ | Mean of Time-Domain Body Gyroscope Signal Z direction
BodyGyroscopeStdX | Standard Deviation of Time-Domain Body Gyroscope Signal X direction
BodyGyroscopeStdY | Standard Deviation of Time-Domain Body Gyroscope Signal Y direction
BodyGyroscopeStdZ | Standard Deviation of Time-Domain Body Gyroscope Signal Z direction
BodyGyroscopeJerkMeanX | Mean of Time-Domain Body Gyroscope Jerk Signal X direction
BodyGyroscopeJerkMeanY | Mean of Time-Domain Body Gyroscope Jerk Signal Y direction
BodyGyroscopeJerkMeanZ | Mean of Time-Domain Body Gyroscope Jerk Signal Z direction
BodyGyroscopeJerkStdX | Standard Deviation of Time-Domain Body Gyroscope Jerk Signal X direction
BodyGyroscopeJerkStdY | Standard Deviation of Time-Domain Body Gyroscope Jerk Signal Y direction
BodyGyroscopeJerkStdZ | Standard Deviation of Time-Domain Body Gyroscope Jerk Signal Z direction
BodyAccelerationMeanMagnitude | Mean of Time-Domain Body Acceleration Signal Magnitude
BodyAccelerationStdMagnitude |  Standard Deviation of Time-Domain Body Acceleration Signal Magnitude
GravityAccelerationMeanMagnitude | Mean of Time-Domain Gravity Acceleration Signal Magnitude
GravityAccelerationStdMagnitude | Standard Deviation of Time-Domain Gravity Acceleration Signal Magnitude
BodyAccelerationJerkMeanMagnitude | Mean of Time-Domain Body Accelerometer Jerk Signal Magnitude
BodyAccelerationJerkStdMagnitude | Standard Deviation of Time-Domain Body Accelerometer Jerk Signal Magnitude
BodyGyroscopeMeanMagnitude | Mean of Time-Domain Body Gyroscope Signal Magnitude
BodyGyroscopeStdMagnitude | Standard Deviation of Time-Domain Body Gyroscope Signal Magnitude
BodyGyroscopeJerkMeanMagnitude | Mean of Time-Domain Body Gyroscope Jerk Signal Magnitude
BodyGyroscopeJerkStdMagnitude | Standard Deviation of Time-Domain Body Gyroscope Jerk Signal Magnitude
BodyAccelerationFreqMeanX | Mean of Frequency-Domain Body Acceleration Signal X direction
BodyAccelerationFreqMeanY | Mean of Frequency-Domain Body Acceleration Signal Y direction
BodyAccelerationFreqMeanZ | Mean of Frequency-Domain Body Acceleration Signal Z direction
BodyAccelerationFreqStdX | Standard Deviation of Frequency-Domain Body Acceleration Signal X direction
BodyAccelerationFreqStdY | Standard Deviation of Frequency-Domain Body Acceleration Signal Y direction
BodyAccelerationFreqStdZ | Standard Deviation of Frequency-Domain Body Acceleration Signal Z direction
BodyAccelerationJerkFreqMeanX | Mean of Frequency-Domain Body Accelerometer Jerk Signal X direction
BodyAccelerationJerkFreqMeanY | Mean of Frequency-Domain Body Accelerometer Jerk Signal Y direction
BodyAccelerationJerkFreqMeanZ | Mean of Frequency-Domain Body Accelerometer Jerk Signal Z direction
BodyAccelerationJerkFreqStdX | Standard Deviation of Frequency-Domain Body Accelerometer Jerk Signal X direction
BodyAccelerationJerkFreqStdY | Standard Deviation of Frequency-Domain Body Accelerometer Jerk Signal Y direction
BodyAccelerationJerkFreqStdZ | Standard Deviation of Frequency-Domain Body Accelerometer Jerk Signal Z direction
BodyGyroscopeFreqMeanX | Mean of Frequency-Domain Body Gyroscope Signal X direction
BodyGyroscopeFreqMeanY | Mean of Frequency-Domain Body Gyroscope Signal Y direction
BodyGyroscopeFreqMeanZ | Mean of Frequency-Domain Body Gyroscope Signal Z direction
BodyGyroscopeFreqStdX | Standard Deviation of Frequency-Domain Body Gyroscope Signal X direction
BodyGyroscopeFreqStdY | Standard Deviation of Frequency-Domain Body Gyroscope Signal Y direction
BodyGyroscopeFreqStdZ | Standard Deviation of Frequency-Domain Body Gyroscope Signal Z direction
BodyAccelerationFreqMeanMagnitude | Mean of Frequency-Domain Body Acceleration Signal Magnitude
BodyAccelerationFreqStdMagnitude | Standard Deviation of Frequency-Domain Body Acceleration Signal Magnitude
BodyAccelerationJerkFreqMeanMagnitude | Mean of Frequency-Domain Body Accelerometer Jerk Signal Magnitude
BodyAccelerationJerkFreqStdMagnitude | Standard Deviation of Frequency-Domain Body Accelerometer Jerk Signal Magnitude
BodyGyroscopeFreqMeanMagnitude | Mean of Frequency-Domain Body Gyroscope Signal Magnitude
BodyGyroscopeFreqStdMagnitude | Standard Deviation of Frequency-Domain Body Gyroscope Signal Magnitude
BodyGyroscopeJerkFreqMeanMagnitude | Mean of Frequency-Domain Body Gyroscope Jerk Signal Magnitude
BodyGyroscopeJerkFreqStdMagnitude | Standard Deviation of Frequency-Domain Body Gyroscope Jerk Signal Magnitude



The table below shows which variables were extracted from the original data set and
the names that were used in the new data set:

# Table of Columns Extracted and Variable Names

Original Column Number | Original Description | New Variable Name
-----------|---------------------|--------------------------------------------|
1   |tBodyAcc-mean()-X           |BodyAccelerationMeanX
2   |tBodyAcc-mean()-Y           |BodyAccelerationMeanY
3   |tBodyAcc-mean()-Z           |BodyAccelerationMeanZ
4   |tBodyAcc-std()-X            |BodyAccelerationStdX
5   |tBodyAcc-std()-Y            |BodyAccelerationStdY
6   |tBodyAcc-std()-Z            |BodyAccelerationStdZ
41  |tGravityAcc-mean()-X        |GravityAccelerationMeanX
42  |tGravityAcc-mean()-Y        |GravityAccelerationMeanY
43  |tGravityAcc-mean()-Z        |GravityAccelerationMeanZ
44  |tGravityAcc-std()-X         |GravityAccelerationStdX
45  |tGravityAcc-std()-Y         |GravityAccelerationStdY
46  |tGravityAcc-std()-Z         |GravityAccelerationStdZ
81  |tBodyAccJerk-mean()-X       |BodyAccelerationJerkMeanX
82  |tBodyAccJerk-mean()-Y       |BodyAccelerationJerkMeanY
83  |tBodyAccJerk-mean()-Z       |BodyAccelerationJerkMeanZ
84  |tBodyAccJerk-std()-X        |BodyAccelerationJerkStdX
85  |tBodyAccJerk-std()-Y        |BodyAccelerationJerkStdY
86  |tBodyAccJerk-std()-Z        |BodyAccelerationJerkStdZ
121 |tBodyGyro-mean()-X          |BodyGyroscopeMeanX
122 |tBodyGyro-mean()-Y          |BodyGyroscopeMeanY
123 |tBodyGyro-mean()-Z          |BodyGyroscopeMeanZ
124 |tBodyGyro-std()-X           |BodyGyroscopeStdX
125 |tBodyGyro-std()-Y           |BodyGyroscopeStdY
126 |tBodyGyro-std()-Z           |BodyGyroscopeStdZ
161 |tBodyGyroJerk-mean()-X      |BodyGyroscopeJerkMeanX
162 |tBodyGyroJerk-mean()-Y      |BodyGyroscopeJerkMeanY
163 |tBodyGyroJerk-mean()-Z      |BodyGyroscopeJerkMeanZ
164 |tBodyGyroJerk-std()-X       |BodyGyroscopeJerkStdX
165 |tBodyGyroJerk-std()-Y       |BodyGyroscopeJerkStdY
166 |tBodyGyroJerk-std()-Z       |BodyGyroscopeJerkStdZ
201 |tBodyAccMag-mean()          |BodyAccelerationMeanMagnitude
202 |tBodyAccMag-std()           |BodyAccelerationStdMagnitude
214 |tGravityAccMag-mean()       |GravityAccelerationMeanMagnitude
215 |tGravityAccMag-std()        |GravityAccelerationStdMagnitude
227 |tBodyAccJerkMag-mean()      |BodyAccelerationJerkMeanMagnitude
228 |tBodyAccJerkMag-std()       |BodyAccelerationJerkStdMagnitude
240 |tBodyGyroMag-mean()         |BodyGyroscopeMeanMagnitude
241 |tBodyGyroMag-std()          |BodyGyroscopeStdMagnitude
253 |tBodyGyroJerkMag-mean()     |BodyGyroscopeJerkMeanMagnitude
254 |tBodyGyroJerkMag-std()      |BodyGyroscopeJerkStdMagnitude
266 |fBodyAcc-mean()-X           |BodyAccelerationFreqMeanX
267 |fBodyAcc-mean()-Y           |BodyAccelerationFreqMeanY
268 |fBodyAcc-mean()-Z           |BodyAccelerationFreqMeanZ
269 |fBodyAcc-std()-X            |BodyAccelerationFreqStdX
270 |fBodyAcc-std()-Y            |BodyAccelerationFreqStdY
271 |fBodyAcc-std()-Z            |BodyAccelerationFreqStdZ
345 |fBodyAccJerk-mean()-X       |BodyAccelerationJerkFreqMeanX
346 |fBodyAccJerk-mean()-Y       |BodyAccelerationJerkFreqMeanY
347 |fBodyAccJerk-mean()-Z       |BodyAccelerationJerkFreqMeanZ
348 |fBodyAccJerk-std()-X        |BodyAccelerationJerkFreqStdX
349 |fBodyAccJerk-std()-Y        |BodyAccelerationJerkFreqStdY
350 |fBodyAccJerk-std()-Z        |BodyAccelerationJerkFreqStdZ
424 |fBodyGyro-mean()-X          |BodyGyroscopeFreqMeanX
425 |fBodyGyro-mean()-Y          |BodyGyroscopeFreqMeanY
426 |fBodyGyro-mean()-Z          |BodyGyroscopeFreqMeanZ
427 |fBodyGyro-std()-X           |BodyGyroscopeFreqStdX
428 |fBodyGyro-std()-Y           |BodyGyroscopeFreqStdY
429 |fBodyGyro-std()-Z           |BodyGyroscopeFreqStdZ
503 |fBodyAccMag-mean()          |BodyAccelerationFreqMeanMagnitude
504 |fBodyAccMag-std()           |BodyAccelerationFreqStdMagnitude
516 |fBodyBodyAccJerkMag-mean()  |BodyAccelerationJerkFreqMeanMagnitude
517 |fBodyBodyAccJerkMag-std()   |BodyAccelerationJerkFreqStdMagnitude
529 |fBodyBodyGyroMag-mean()     |BodyGyroscopeFreqMeanMagnitude
530 |fBodyBodyGyroMag-std()      |BodyGyroscopeFreqStdMagnitude
542 |fBodyBodyGyroJerkMag-mean() |BodyGyroscopeJerkFreqMeanMagnitude
543 |fBodyBodyGyroJerkMag-std()  |BodyGyroscopeJerkFreqStdMagnitude

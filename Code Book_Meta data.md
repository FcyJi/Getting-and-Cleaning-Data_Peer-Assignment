# Getting-and-Cleaning-Data_Peer-Assignment
Peer Assessments /Getting and Cleaning Data Course Project

# Part 2.- Meta Data: Code book
 The independent tidy data set contains 
-     180 observations: 30 subjects * 6 activities each)
-	68 variables: 2 (activity and subject IDs) + 66 measurement ones (see below).

"The features selected for [the original database] come from the accelerometer and gyroscope 3-axial raw signals. These signals were used to estimate variables of the feature vector for each pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."
The variables specifically considered in this data set are the means/standard deviations for those three axial (X/Y/Z) measurements. 

Entire list of variables.
activity                tBodyGyro-mean()-Z	          fBodyAcc-std()-X
subject	               tBodyGyro-std()-X  	          fBodyAcc-std()-Y
tBodyAcc-mean()-X 	     tBodyGyro-std()-Y	          fBodyAcc-std()-Z
tBodyAcc-mean()-Y	     tBodyGyro-std()-Z	          fBodyAccJerk-mean()-X
tBodyAcc-mean()-Z   	tBodyGyroJerk-mean()-X	     fBodyAccJerk-mean()-Y
tBodyAcc-std()-X    	tBodyGyroJerk-mean()-Y	     fBodyAccJerk-mean()-Z
tBodyAcc-std()-Y	     tBodyGyroJerk-mean()-Z	     fBodyAccJerk-std()-X
tBodyAcc-std()-Z	     tBodyGyroJerk-std()-X	     fBodyAccJerk-std()-Y
tGravityAcc-mean()-X	tBodyGyroJerk-std()-Y	     fBodyAccJerk-std()-Z
tGravityAcc-mean()-Y	tBodyGyroJerk-std()-Z	     fBodyGyro-mean()-X
tGravityAcc-mean()-Z	tBodyAccMag-mean()	          fBodyGyro-mean()-Y
tGravityAcc-std()-X	     tBodyAccMag-std()	          fBodyGyro-mean()-Z
tGravityAcc-std()-Y	     tGravityAccMag-mean()	     fBodyGyro-std()-X
tGravityAcc-std()-Z	     tGravityAccMag-std()	     fBodyGyro-std()-Y
tBodyAccJerk-mean()-X	tBodyAccJerkMag-mean()	     fBodyGyro-std()-Z
tBodyAccJerk-mean()-Y	tBodyAccJerkMag-std()	     fBodyAccMag-mean()
tBodyAccJerk-mean()-Z	tBodyGyroMag-mean()	          fBodyAccMag-std()
tBodyAccJerk-std()-X	tBodyGyroMag-std()	          fBodyBodyAccJerkMag-mean()
tBodyAccJerk-std()-Y	tBodyGyroJerkMag-mean()	     fBodyBodyAccJerkMag-std()
tBodyAccJerk-std()-Z	tBodyGyroJerkMag-std()	     fBodyBodyGyroMag-mean()
tBodyGyro-mean()-X	     fBodyAcc-mean()-X	          fBodyBodyGyroMag-std()
tBodyGyro-mean()-Y	     fBodyAcc-mean()-Y	          fBodyBodyGyroJerkMag-mean()
 	                    fBodyAcc-mean()-Z	          fBodyBodyGyroJerkMag-std()
Note:
- the prefix 't' to denote time
- the 'f' to indicate frequency domain signals)


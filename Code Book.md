# Getting-and-Cleaning-Data_Peer-Assignment
Peer Assessments /Getting and Cleaning Data Course Project


# Part 2.- Meta Data: Code book
 The independent tidy data set contains 
-     180 observations: 30 subjects * 6 activities each)
-	68 variables: 2 (activity and subject IDs) + 66 measurement ones (see below).



The features selected for [the original database] come from the accelerometer and gyroscope 3-axial raw signals. These signals were used to estimate variables of the feature vector for each pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to 
remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)
 using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm 
(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, 
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 



The variables specifically considered in this data set are the average of the means/standard deviations for those three axial (X/Y/Z) measurements each activity and each subject. 

Entire list of variables.
activity;
subject;
Average_tBodyAcc-mean()-X;
Average_tBodyAcc-mean()-Y;
Average_tBodyAcc-mean()-Z;
Average_tBodyAcc-std()-X;
Average_tBodyAcc-std()-Y;
Average_tBodyAcc-std()-Z;
Average_tGravityAcc-mean()-X;
Average_tGravityAcc-mean()-Y;
Average_tGravityAcc-mean()-Z;
Average_tGravityAcc-std()-X;
Average_tGravityAcc-std()-Y;
Average_tGravityAcc-std()-Z;
Average_tBodyAccJerk-mean()-X;
Average_tBodyAccJerk-mean()-Y;
Average_tBodyAccJerk-mean()-Z;
Average_tBodyAccJerk-std()-X;
Average_tBodyAccJerk-std()-Y;
Average_tBodyAccJerk-std()-Z;
Average_tBodyGyro-mean()-X;
Average_tBodyGyro-mean()-Y;
Average_tBodyGyro-mean()-Z;
Average_tBodyGyro-std()-X;
Average_tBodyGyro-std()-Y;
Average_tBodyGyro-std()-Z;
Average_tBodyGyroJerk-mean()-X;
Average_tBodyGyroJerk-mean()-Y;
Average_tBodyGyroJerk-mean()-Z;
Average_tBodyGyroJerk-std()-X;
Average_tBodyGyroJerk-std()-Y;
Average_tBodyGyroJerk-std()-Z;
Average_tBodyAccMag-mean();
Average_tBodyAccMag-std();
Average_tGravityAccMag-mean();
Average_tGravityAccMag-std();
Average_tBodyAccJerkMag-mean();
Average_tBodyAccJerkMag-std();
Average_tBodyGyroMag-mean();
Average_tBodyGyroMag-std();
Average_tBodyGyroJerkMag-mean();
Average_tBodyGyroJerkMag-std();
Average_fBodyAcc-mean()-X;
Average_fBodyAcc-mean()-Y;
Average_fBodyAcc-mean()-Z;
Average_fBodyAcc-std()-X;
Average_fBodyAcc-std()-Y;
Average_fBodyAcc-std()-Z;
Average_fBodyAccJerk-mean()-X;
Average_fBodyAccJerk-mean()-Y;
Average_fBodyAccJerk-mean()-Z;
Average_fBodyAccJerk-std()-X;
Average_fBodyAccJerk-std()-Y;
Average_fBodyAccJerk-std()-Z;
Average_fBodyGyro-mean()-X;
Average_fBodyGyro-mean()-Y;
Average_fBodyGyro-mean()-Z;
Average_fBodyGyro-std()-X;
Average_fBodyGyro-std()-Y;
Average_fBodyGyro-std()-Z;
Average_fBodyAccMag-mean();
Average_fBodyAccMag-std();
Average_fBodyBodyAccJerkMag-mean();
Average_fBodyBodyAccJerkMag-std();
Average_fBodyBodyGyroMag-mean();
Average_fBodyBodyGyroMag-std();
Average_fBodyBodyGyroJerkMag-mean();
Average_fBodyBodyGyroJerkMag-std();

Note:
- the prefix 't' to denote time
- the 'f' to indicate frequency domain signals)
#End.
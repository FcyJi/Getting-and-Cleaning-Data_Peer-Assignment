# Getting-and-Cleaning-Data_Peer-Assignment
Peer Assessments /Getting and Cleaning Data Course Project

# Part 1.- Explanation of the scripts
This "run_analysis.R" is divided into 5 parts:
A.- Getting, Formatting and Merging the two datasets.
In this part we have first got the "test" and the "train" data sets to which we've added the variable "activity" and "subject" that was into two other text files. Besides, we have also added a variable in these two datasets that would help us, after the merging, to identify in whish data set a subject came from.

B.- Merging the training and the test sets to create one data set.
This part consist only in merging of the "test" and the "train" data sets. (Some lines of codes have been written to format the variable that permits to identify in which data set a subject come from).

C.- Adding the names of the measurements and extracting the ones we need.
We have dedicated this part to create a variable which captures, in the same time:
      - the activity variable name
      - the subject variable name
      - the names of the measurements
      - the variable name identifying the data set of origin.
This is important because it helps appropriately label the data set with descriptive variable names. After that we have proceeded to the extraction of the specific measurements that interested us.

D.- "From the data set in step 4, creates a second, independent tidy data set"
This section corresponds to the last part of the requirements of the peer assessment, mixed to the third one. We have used the "sapply" and "tapply" functions to summarize the merged and cleaned data set so we might have the average of each variable for each activity and each subject.
 
E.- Create the data set as a ".txt" file
We use the "write.table()" function to write the tidy data set to a text file called "Independent tidy data.txt" that will be located into the working directory.
# End.

# A Getting, Formatting and Merging the two datasets.
  # Get the "test" and "train" data sets.
    test1<- "./UCI HAR Dataset/test/X_test.txt" 
    test<- read.table(test1, header=F)
    train1<-"./UCI HAR Dataset/train/X_train.txt"
    train<- read.table(train1, header=F)

  # Get the activities IDs for each record.
    test2<- "./UCI HAR Dataset/test/y_test.txt"
    testlab<-  read.table(test2, header=F)
    train2<-"./UCI HAR Dataset/train/y_train.txt" 
    trainlab<- read.table(train2, header=F) 

  # Get the subjects id from the "subject_tesxt.txt" and "subject_train.txt" files.
    sub_test <- "./UCI HAR Dataset/test/subject_test.txt"
    sub_Test <- read.table(sub_test, header=F) 
    sub_train<- "./UCI HAR Dataset/train/subject_train.txt"
    sub_Train<- read.table(sub_train, header=F)

  # Format the activity labels and the subjects IDs.
    Test<-  data.frame(testlab, sub_Test)
    Train<- data.frame(trainlab, sub_Train)
 
  # Add the activity labels and the subjects IDs to the "test" and "train" data sets.
    Test<-  data.frame(Test, test)
    Train<- data.frame(Train, train)

  # Create and add a variable to identify in which set the subjects came from.
    from_test <- rep(1, nrow(Test))
    from_train<- rep(2, nrow(Train))
    Test<-  data.frame(from_test, Test)     
    Train<- data.frame(from_train, Train)    
    #str(Test, list.len =1000)  #
    #str(Train, list.len =1000) #  Get a look of the two data sets.
    #show(dim(Test))            # 
    #show(dim(Train))           #

#-------------------------------------------
# B Merging the training and the test sets to create one data set.
  tt<- merge(Test,Train, all=TRUE)                 # Merge the two data sets.
  tt$from_test[is.na(tt$from_test)] <-0            #   
  tt$from_train[is.na(tt$from_train)] <-0          # Formating the variable that permits 
  a<- tt$from_test ; b<- tt$from_train             # to identify in  which sets in   
  tt<- tt[,-c(564,565)]                            # subject come from
  tt$from<- a+b ; tt$from<- as.factor(tt$from)     # 
  #str(tt, list.len=1000)                          # Get a look of the merged data set.
  #show(dim(tt))

#-------------------------------------------
# C Adding the names of the measurements and extracting the ones we need.
  # Getting and Adding the names of the measurements.
  # (4) Appropriately labels the data set with descriptive variable names.
    d1<- read.table("./UCI HAR Dataset/features.txt", header=F)
                                                   # Create a variable which captures :
    d2<-as.vector(d1[2]) ; d4<- as.vector(d2)      # - the activity variable name
    a2<- as.character(d4$V2)                       # - the subject variable name
    a20<- rep("Average_", 561)
    a2<- paste0(a20,a2)
    a1<- "activity"; a11<- "subject";              # - the names of the measuremnts
    a3<- "test_ot_train" # a2<- d4;                # - the variable name identifying
    aa<-rbind(a1,a11); aa<- as.character(aa[,1])   #   the data set of origin.
    aa<- c(aa,a2); aa<- c(aa,a3) 
    names(tt)<- aa                                 # Add the names of the measurements.
    #str(tt, list.len=1000) # Get a look of the cleaned data set.
    #show(dim(tt))                                      

  # (2) Extracts only the measurements on the mean and standard deviation for each measurement.
    # Writing the corresponding regular expressions.
    ii<- grep(("mean.{2}$|std.{2}$|mean.{4}$|std.{4}$"), names(tt))
    length(ii)
    Q2<- tt[,c(1:2,ii,564)]            # gettin the data for the mean and the std.
    Q2<- Q2[order(Q2$subject),]        # Sort the dataframe by subject

#-------------------------------------------
# D (5) From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
  Q2$subject2<- Q2$subject             ; Q2$activity2<- Q2$activity
  Q2$subject2<- as.factor(Q2$subject2) ; Q2$activity2<- as.factor(Q2$activity2)
 
  Q3<-  sapply(Q2[,-c(69:71)], tapply, list(Q2$subject2,Q2$activity2), mean)
  Q4<- as.data.frame(Q3)
  Q4$subject<- factor(Q4$subject)
  #str(Q4)     # Get a look of the independent tidy data set.
  #show(dim(Q4))    

  # (3) Uses descriptive activity names to name the activities in the data set
    Q4$activity<- factor(Q4$activity, levels=c(1,2,3,4,5,6), 
    labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))
    #str(Q4)        # Get a look of the 
    #show(head(Q4)) # independent tidy data set.
    #show(dim(Q4))

#-------------------------------------------
# E.- Create the data set as a txt file
  write.table(Q4, file="Independent tidy data.txt", row.name=FALSE)
  show("")
  show(paste(" Well done"))
  show("")
  show(paste(" Look in your working directory to find the 'txt' extension file"))
  show(paste(" of the independent tidy data set.                               "))
  show("")
  show("")
#

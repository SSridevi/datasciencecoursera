## CodeBook for Human Activity Recognition Using Smartphones Dataset
## ==================================================================

## The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and 
## tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they ## were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to ## remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals ## (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

## Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals
##(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using ## the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

## Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, 
##fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

## '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## tBodyAcc-XYZ
## tGravityAcc-XYZ
## tBodyAccJerk-XYZ
## tBodyGyro-XYZ
## tBodyGyroJerk-XYZ
## tBodyAccMag
## tGravityAccMag
## tBodyAccJerkMag
## tBodyGyroMag
## tBodyGyroJerkMag
## fBodyAcc-XYZ
## fBodyAccJerk-XYZ
## fBodyGyro-XYZ
## fBodyAccMag
## fBodyAccJerkMag
## fBodyGyroMag
## fBodyGyroJerkMag

## The set of variables that were estimated and used for the course Project from these signals are: 

## mean(): Mean value
## std(): Standard deviation
## meanFreq(): Weighted average of the frequency components to obtain a mean frequency

## Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

## gravityMean
## tBodyAccMean
## tBodyAccJerkMean
## tBodyGyroMean
## tBodyGyroJerkMean

## The dataset includes the following files:
## =========================================

##- 'features.txt': List of all features.

##- 'activity_labels.txt': Links the class labels with their activity name.

##- 'train/X_train.txt': Training set.

##- 'train/y_train.txt': Training labels.

##- 'test/X_test.txt': Test set.

##- 'test/y_test.txt': Test labels.

##The following files are available for the train and test data. Their descriptions are equivalent. 

##- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range ## is from 1 to 30. 

## Data frames created in R for the course project are:
## features - contain the above names as values of a single column and removed the "-" and "()" from the column values to ## make the datset tidy
## Test - obtained by concatenating x_test,y_test and subject_test files such that each observation is in the same row and ## the column names were obtained from the features file.
## Train - obtained by concatenating x_train,y_train and subject_train files such that each observation is in the same row ## and the column names were obtained from the features file..
## test_train- obtained by merging test and the train files.
## measure_data- contains only the mean and standard deviation measurement columns or values for each subject/activity 
## combination.
## activity_measure - obtained by merging measure_data with activity file to get the descriptive labels for activities
## meltdata<- activity_measure file transposed to contain the Subject,activity,activity_label, variable name and value 
## columns. the column names from measure_data are in the "variable" column and the column values from measure_data are in ## the "value" column.
## avg_measure<- obtained by averaging the measurement values for each subject by activity.

## The avg_measure dataset attached has variables that were obtained by averaging the mean and standard deviations 
## measurements of the signals in a signal window sample for each Subject by activity. 

## Subject: identifies each of the 30 subjects in the study
## Activity_Label:Description of the activities
## tBodyAccmeanX tBodyAccmeanY tBodyAccmeanZ tBodyAccstdX tBodyAccstdY tBodyAccstdZ tGravityAccmeanX tGravityAccmeanY 
## tGravityAccmeanZ tGravityAccstdX tGravityAccstdY tGravityAccstdZ tBodyAccJerkmeanX tBodyAccJerkmeanY tBodyAccJerkmeanZ ## tBodyAccJerkstdX tBodyAccJerkstdY tBodyAccJerkstdZ tBodyGyromeanX tBodyGyromeanY tBodyGyromeanZ tBodyGyrostdX 
## tBodyGyrostdY tBodyGyrostdZ tBodyGyroJerkmeanX tBodyGyroJerkmeanY tBodyGyroJerkmeanZ tBodyGyroJerkstdX tBodyGyroJerkstdY ## tBodyGyroJerkstdZ tBodyAccMagmean tBodyAccMagstd tGravityAccMagmean tGravityAccMagstd tBodyAccJerkMagmean 
## tBodyAccJerkMagstd tBodyGyroMagmean tBodyGyroMagstd tBodyGyroJerkMagmean tBodyGyroJerkMagstd fBodyAccmeanX fBodyAccmeanY ## fBodyAccmeanZ fBodyAccstdX fBodyAccstdY fBodyAccstdZ fBodyAccmeanFreqX fBodyAccmeanFreqY fBodyAccmeanFreqZ 
## fBodyAccJerkmeanX fBodyAccJerkmeanY fBodyAccJerkmeanZ fBodyAccJerkstdX fBodyAccJerkstdY fBodyAccJerkstdZ ## fBodyAccJerkmeanFreqX fBodyAccJerkmeanFreqY fBodyAccJerkmeanFreqZ fBodyGyromeanX fBodyGyromeanY fBodyGyromeanZ ## fBodyGyrostdX fBodyGyrostdY fBodyGyrostdZ fBodyGyromeanFreqX fBodyGyromeanFreqY fBodyGyromeanFreqZ fBodyAccMagmean  ## fBodyAccMagstd fBodyAccMagmeanFreq fBodyBodyAccJerkMagmean fBodyBodyAccJerkMagstd fBodyBodyAccJerkMagmeanFreq ## fBodyBodyGyroMagmean fBodyBodyGyroMagstd fBodyBodyGyroMagmeanFreq fBodyBodyGyroJerkMagmean fBodyBodyGyroJerkMagstd  ## fBodyBodyGyroJerkMagmeanFreq
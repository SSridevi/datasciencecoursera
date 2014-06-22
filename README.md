## Getting and cleaning data - Course Project1
## Download the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## Unzip the data files to your working directory
## Open R studio and set the working directory in R to the directory where you downloaded the files.
## Read the features.txt file into R which contains the variable names for the measurements and name the dataset as
## features
## match the "-" and "()" string from the values in the second column and remove the matched part using gsub function.
## Read the test file subject_test from the test folder with the subject values into R and set the column name to "Subject" ## call the dataset as test1
## Read the test file y_test from the test folder with the activity values into R and set the column name to "Activity" and ## call the dataset as test2
## read the test file x_test from the test folder with the measurement values into R and get the column names from the ## second column of the features file and call the dataset as test1
## Concatenate the test files using cbind function in the order test1,test2 and test3 and call the resulting dataset as ## test
## read the training file subject_train from the train folder with the subject values into R and set the column name to ## "Subject" call the dataset as train1
## Read the training file y_train from the train folder with the activity values into R and set the column name to ## "Activity" and call the dataset as train2
## Read the train file x_train from the train folder with the measurement values into R and get the column names from the ## second column of the features file and call the dataset as train1
## Concatenate the training files using cbind function in the order train1,train2 and train3 and call the resulting dataset ## as train.
## merge the test and the train datasets by Subject and Activity columns and call the dataset as test_train
## which completes the step1 and step4 for the course project and creates the tidy dataset with descriptive column names ## and each observations is represented in their individual rows 
## To extract only the mean and standard deviation measurements from the merge dataset use the grep function to match the ## column names to "mean","std","Subject" and "Activity" and call the vector as extractCols.
## Create a new dataset called measure_data with the names of the columns in extractCols which completes the step 2 of teh ## course project and narrows the dataset to the columns of interest.
## Read the activity_labels.txt file into R which contains the activity labels, set the column names as activity and ## activity_label and call the dataset as acivity
## Merge the measure_data with the activity dataset by activity column, which completed the step3 of replacing the activity ## column by descriptive labels making the dataset tidier
## To Calculate the average of each measurement variable use the melt function to melt the measure_dataset by ## subject,activity and activity_label 
## call the dcast function to calculate the average of all the measurement variables for each activity per subject, which ## completes the step 5 of the course project and making a tidy dataset for analysis with observations as rows.















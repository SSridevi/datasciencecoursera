## set the working directory to the folder where the files were unzipped
## read the features text file into R
features<-read.table("features.txt")
## remove the "-" and "()" from column values to make the column names descriptive for the final dataset
features$V2<-gsub("\\-|\\()","",features$V2)

## read the test data files into R
test1<-read.table("subject_test.txt",col.names=c("Subject"))
test2<-read.table("Y_test.txt",col.names=c("Activity"))
test3<-read.table("X_test.txt",col.names=features[,2])

## concatenate the test data files 
test<-cbind(test1,test2,test3)

## read the train data files into R
train1<-read.table("subject_train.txt",col.names=c("Subject"))
train2<-read.table("y_train.txt",col.names=c("Activity"))
train3<-read.table("X_train.txt",col.names=features[,2])

## concatenate the train data files 
train<-cbind(train1,train2,train3)

## 1. merge the test and train data files by Subject and Activity columns
test_train<-merge(test,train,by=c("Subject","Activity"),all=TRUE)


## 2. extract the mean and standard deviation measurement columns from the merged dataset 
extractCols <- grep("mean|std|Subject|Activity", names(test_train))
## keep the extractCols and drop the dropCols from the final dataset
measure_data<-test_train[,extractCols]

## read the activity data files into R
activity<-read.table("activity_labels.txt",header=FALSE,col.name=c("Activity","Activity_Label"))

## 3. merge the activity and measure data sets by Activity columns to label the activities with descriptive names
activity_measure<-merge(measure_data,activity,by=c("Activity"),all=TRUE)


## melt the measure dataset by Subject,Activity and Activity Label
library(reshape2)
meltdata<-melt(activity_measure,id=c("Subject","Activity_Label","Activity"),na.rm=TRUE)
meltdata$value<-as.numeric(meltdata$value)


## 4. Calculate the average of all the measures for each activty per Subject
avg_measure<-dcast(meltdata,Subject+Label ~ variable,mean)

##write the tidy dataset to a text file
write.table(avg_measure,"avg_measure.txt",col.names=names(avg_measure),quote=FALSE)
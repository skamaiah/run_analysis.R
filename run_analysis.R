# The first set of instructions is to check to see if the data for the project is already downloaded in the currect working directory if its not done then it would download the same onto the working directory and unzip the file.
# Here I have assumed that if you have downloaded the file then you have retained the file name as "getdata-projectfiles-UCI HAR Dataset.zip".
# someone trying to run this code on mac os should use the "download.file(fileurl,destfile="./getdata-projectfiles-UCI HAR Dataset.zip",method="curl")".


fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if(!file.exists("./getdata-projectfiles-UCI HAR Dataset.zip")){
  download.file(fileurl,destfile="./getdata-projectfiles-UCI HAR Dataset.zip")
}

unzip("./getdata-projectfiles-UCI HAR Dataset.zip")


# The next set of instructions is to read the Test data sets of subject_test (volunteers/subjects), y_test (activities) & X_test (measurements) files

features = read.table("./UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)

testsubject = read.table("./UCI HAR Dataset/test/subject_test.txt",colClasses = "numeric",col.names = "Subject")
testX = read.table("./UCI HAR Dataset/test/X_test.txt",stringsAsFactors=FALSE)
testY = read.table("./UCI HAR Dataset/test/y_test.txt",colClasses = "numeric",col.names = "Activities")



# Extract the features$V2 column from the features table onto a vector and this can be assigned as header for textX table which are essentially measurement values.

headerfeatures <- c(features$V2)
names(testX) <- headerfeatures


# The next set of instructions is to extract the Subject's and Activities' data onto a vector and then cbind them together with the measurements data above


Activities <- c(testY$Activities)
Subject <- c(testsubject$Subject)

testdata <- cbind(Subject,Activities,testX)


# The next step would be to read the Train data sets of subject_train (volunteers/subjects), Y_train (activities) & X_train (measurements) files.
# Also to extract the Subject's and Activities' data onto a vector and then cbind them together with the measurements data above.
# also it would assign the header to the measurements data tarinX.

trainsubject = read.table("./UCI HAR Dataset/train/subject_train.txt",colClasses = "numeric",col.names = "Subject")
trainX = read.table("./UCI HAR Dataset/train/X_train.txt",stringsAsFactors=FALSE)
trainY = read.table("./UCI HAR Dataset/train/y_train.txt",colClasses = "numeric",col.names = "Activities")


names(trainX) <- headerfeatures

Activities <- c(trainY$Activities)
Subject <- c(trainsubject$Subject)

traindata <- cbind(Subject,Activities,trainX)

# The next step would be rbind the Test data and Train data and this would sit under the consolidated variable

consolidated <- rbind(testdata,traindata)


# The next set of instructions is to extract only the measurements on the mean and standard deviation from each measurement and this can be identified from the 'headerfeatures' variable we have from earlier.
# Am using the 'grep' function to search for matches to argument "mean()" and "std()" seperately and then combine both along with "Subject","Activities" under the variable 'meanandstd'

meanvalues <- grep("mean()",headerfeatures,value=TRUE,fixed=TRUE)
stdvalues <- grep("std()",headerfeatures,value=TRUE,fixed=TRUE)
meanandstd <- c("Subject","Activities",meanvalues,stdvalues)

# The next set of instruction is to water down the 'consolidated' data frame to arrive at 'tidydata' data frame using the subset fuction which meet conditions(select columns) "meanandstd" variable.

tidydata <- subset(consolidated,select=meanandstd)

# The next set of instructions is to use descriptive activity names to name the activities in the data set and this has been achived using the gsub function.

tidydata[,"Activities"] <- gsub(1,"Walking",tidydata$Activities)
tidydata[,"Activities"] <- gsub(2,"Walking Upstairs",tidydata$Activities)
tidydata[,"Activities"] <- gsub(3,"Walking Downstairs",tidydata$Activities)
tidydata[,"Activities"] <- gsub(4,"Sitting",tidydata$Activities)
tidydata[,"Activities"] <- gsub(5,"Standing",tidydata$Activities)
tidydata[,"Activities"] <- gsub(6,"Laying",tidydata$Activities)

# The next set of instruction is the important piece which Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# I have achieved this by using the aggregate function which allows me to split the data into subsets (tidydata$Subject,tidydata$Activities), computes summary statistics for each (mean of measurements), and returns the result in a convenient form.

finaltidydata <- aggregate(tidydata, by=list(tidydata$Subject,tidydata$Activities), FUN=mean)

# The below instruction is to delete the the 3rd and 4th column which are generated as a result of aggregate function and can be replaced by Group.1 for Subject's and Group.2 for Activities.

finaltidydata <- finaltidydata[,-c(3,4)]


# The next set of instruction is to appropriately label the data set with descriptive variable names.

headervalues <- names(finaltidydata)

headervalues <- sub("^t","Time",headervalues)
headervalues <- sub("^f","Frequency",headervalues)
headervalues <- sub("Acc","Accelerometer",headervalues)
headervalues <- sub("-mean..","Mean",headervalues)
headervalues <- sub("-X","Xaxis",headervalues)
headervalues <- sub("-Y","Yaxis",headervalues)
headervalues <- sub("-Z","Zaxis",headervalues)
headervalues <- sub("-std..","StandardDeviation",headervalues)
headervalues <- sub("Gyro","Gyroscope",headervalues)
headervalues <- sub("BodyBody","Body",headervalues)
headervalues <- sub("Mag","Magnitude",headervalues)
headervalues <- sub("Group.1","Subject",headervalues)
headervalues <- sub("Group.2","Activities",headervalues)


# Assign back the descriptive variable names to the data frame finaltidydata and this achieves our final goal of a tidy data data set.

headervalues -> names(finaltidydata)

# The final file would be saved on your working directory as "TidyData.csv".

write.csv(finaltidydata, file = "TidyData.csv")
print("Tidy data set with the average of each variable for each activity and each subject is saved under the file name TidyData.csv on your working directory")

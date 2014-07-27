run_analysis.R
==============

1.	The first step was to put together the test data by vertically merging the subject_test, Y_test and X_test files. 
2.	Similar exercise was done for train data by vertically merging the subject_train, Y_train and X_train files. 
3.	Use the features.ttxt file to add the measurement headings to the test data and train data
4.	Horizontally merge the test and train data to get one consolidated file.
5.	There is no need to calculate the mean and standard deviation as they are already calculated along with many other measurements in the X_train and X_test.txt.
6.	Filter only the mean and standard deviation values from all the measurements in the features/variables.
7.	Use descriptive activity names instead of the numbers from the 'activity_labels.txt' and replace the labels from 1 to 6.
8.	Get the mean of each activity for each subject.
9.	Add descriptive variable names for the measurement values.
10.	Save the tidy data as a txt file.

Discription about the script run_analysis.R is given below:
Step1:  lines 6 to 8 

Is to check to see if the data for the project is already downloaded in the currect working directory if its not done then it would download the same onto the working directory and unzip the file.Here I have assumed that if you have downloaded the file then you have retained the file name as "getdata-projectfiles-UCI HAR Dataset.zip".

Step2: lines 17 through 21

Read the Test data sets of features.txt, subject_test (volunteers/subjects), y_test (activities) & X_test (measurements) files.

Step3: Lines 27 and 28

Extract the features$V2 column from the features table onto a vector and this can be assigned as header for testX table which are essentially measurement values.

Step4: lines 34 through 37

Extract the Subject's and Activities' data onto a vector and then cbind them together with the measurements data above and this should essentially give the testdata

Step5: lines 44 and 54

Read the Train data sets of subject_train (volunteers/subjects), Y_train (activities) & X_train (measurements) files.

Also to extract the Subject's and Activities' data onto a vector and then cbind them together with the measurements data above.

Also it would assign the header to the measurements data trainX.

Step6: Line 58

The next step would be rbind the Test data and Train data and this would sit under the consolidated variable.

Step7: Lines 64 to 66

The next set of instructions is to extract only the measurements on the mean and standard deviation from each measurement and this can be identified from the 'headerfeatures' variable we have from earlier.
Am using the 'grep' function to search for matches to argument "mean()" and "std()" seperately and then combine both along with "Subject","Activities" under the variable 'meanandstd'


Step8: Line 70

The next set of instruction is to water down the 'consolidated' data frame to arrive at 'tidydata' data frame using the subset fuction which meet conditions(select columns) "meanandstd" variable.

Step9: Lines 74 to 79

 The next set of instructions is to use descriptive activity names to name the activities in the data set and this has been achived using the gsub function.

Step10: line 84

 The next set of instruction is the important piece which Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

I have achieved this by using the aggregate function which allows me to split the data into subsets (tidydata$Subject,tidydata$Activities), computes summary statistics for each (mean of measurements), and returns the result in a convenient form.

Step11: Line 88

The below instruction is to delete the the 3rd and 4th column which are generated as a result of aggregate function and can be replaced by Group.1 for Subject's and Group.2 for Activities.

Step12: Lines 93 to 107

 The next set of instruction is to appropriately label the data set with descriptive variable names.


Step13: Line 112

Assign back the descriptive variable names to the data frame finaltidydata and this achieves our final goal of a tidy data data set.


Step14: Lines 117 and 118

 The final file would be saved on your working directory as "TidyData.txt".
 This can be read into R using the instruction "read.table("./tidyData.txt",stringsAsFactors=FALSE)"





Information about the variables: 


TimeBodyAccelerometerMeanZaxis
TimeGravityAccelerometerMeanXaxis
TimeGravityAccelerometerMeanYaxis
TimeGravityAccelerometerMeanZaxis
TimeBodyAccelerometerJerkMeanXaxis
TimeBodyAccelerometerJerkMeanYaxis
TimeBodyAccelerometerJerkMeanZaxis
TimeBodyGyroscopeMeanXaxis
TimeBodyGyroscopeMeanYaxis
TimeBodyGyroscopeMeanZaxis
TimeBodyGyroscopeJerkMeanXaxis
TimeBodyGyroscopeJerkMeanYaxis
TimeBodyGyroscopeJerkMeanZaxis
TimeBodyAccelerometerMagnitudeMean
TimeGravityAccelerometerMagnitudeMean
TimeBodyAccelerometerJerkMagnitudeMean
TimeBodyGyroscopeMagnitudeMean
TimeBodyGyroscopeJerkMagnitudeMean
FrequencyBodyAccelerometerMeanXaxis
FrequencyBodyAccelerometerMeanYaxis
FrequencyBodyAccelerometerMeanZaxis
FrequencyBodyAccelerometerJerkMeanXaxis
FrequencyBodyAccelerometerJerkMeanYaxis
FrequencyBodyAccelerometerJerkMeanZaxis
FrequencyBodyGyroscopeMeanXaxis
FrequencyBodyGyroscopeMeanYaxis
FrequencyBodyGyroscopeMeanZaxis
FrequencyBodyAccelerometerMagnitudeMean
FrequencyBodyAccelerometerJerkMagnitudeMean
FrequencyBodyGyroscopeMagnitudeMean
FrequencyBodyGyroscopeJerkMagnitudeMean
TimeBodyAccelerometerStandardDeviationXaxis
TimeBodyAccelerometerStandardDeviationYaxis
TimeBodyAccelerometerStandardDeviationZaxis
TimeGravityAccelerometerStandardDeviationXaxis
TimeGravityAccelerometerStandardDeviationYaxis
TimeGravityAccelerometerStandardDeviationZaxis
TimeBodyAccelerometerJerkStandardDeviationXaxis
TimeBodyAccelerometerJerkStandardDeviationYaxis
TimeBodyAccelerometerJerkStandardDeviationZaxis
TimeBodyGyroscopeStandardDeviationXaxis
TimeBodyGyroscopeStandardDeviationYaxis
TimeBodyGyroscopeStandardDeviationZaxis
TimeBodyGyroscopeJerkStandardDeviationXaxis
TimeBodyGyroscopeJerkStandardDeviationYaxis
TimeBodyGyroscopeJerkStandardDeviationZaxis
TimeBodyAccelerometerMagnitudeStandardDeviation
TimeGravityAccelerometerMagnitudeStandardDeviation
TimeBodyAccelerometerJerkMagnitudeStandardDeviation
TimeBodyGyroscopeMagnitudeStandardDeviation
TimeBodyGyroscopeJerkMagnitudeStandardDeviation
FrequencyBodyAccelerometerStandardDeviationXaxis
FrequencyBodyAccelerometerStandardDeviationYaxis
FrequencyBodyAccelerometerStandardDeviationZaxis
FrequencyBodyAccelerometerJerkStandardDeviationXaxis
FrequencyBodyAccelerometerJerkStandardDeviationYaxis
FrequencyBodyAccelerometerJerkStandardDeviationZaxis
FrequencyBodyGyroscopeStandardDeviationXaxis
FrequencyBodyGyroscopeStandardDeviationYaxis
FrequencyBodyGyroscopeStandardDeviationZaxis
FrequencyBodyAccelerometerMagnitudeStandardDeviation
FrequencyBodyAccelerometerJerkMagnitudeStandardDeviation
FrequencyBodyGyroscopeMagnitudeStandardDeviation
FrequencyBodyGyroscopeJerkMagnitudeStandardDeviation



The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.
Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean






Study Design
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

-  Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.


Original dataset information

This dataset has been generated from UCI Human Activity Recognition Using Smartphones Dataset Version 1.0:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universita degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

For more information about the original dataset please refer to following link: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Processed dataset information

The original data in this dataset has been reshaped, in order to have all the information required in one only tidy dataset. Subject and activity information has been added to the train and test main datasets. The resulting train and test datasets have been merged. After that, only some of the features have been extracted, those with mean and standard deviation values. Variable names have been fixed, removing hyphen and parenthesis characters and expanding the name components. Text variable values and labels have been left or converted to CamelCase in order to improve readability.

The resulting dataset is a data.frame called tidy_data with 68 variables and 10299 observations, and a text file called tidy_data.txt.

There is also a second tidy dataset containing the mean of all variables for each subject and activity in a data.frame called tidy_data_mean with 68 variables and 180 obsservations, and a text file called tidy_data_mean.txt. The variable names are the same for both datasets.

Features list

Here is the list of features in the data frame:

Subject	 integer. Experiment subjects. Values 1 to 30
Activity	 factor. Activities performed by the experiment subjects. Levels  1 Walking, 2 WalkingUpstairs, 3 WalkingDownstairs, 4 Sitting, 5 Standing, 6 Laying
TimeBodyAccelerometerMeanX	 real. Time domain, accelerometer body signal, X axis, Mean value
TimeBodyAccelerometerMeanY	 real. Time domain, accelerometer body signal, Y axis, Mean value
TimeBodyAccelerometerMeanZ	 real. Time domain, accelerometer body signal, Z axis, Mean value
TimeBodyAccelerometerStandardDevitaionX	 real. Time domain, accelerometer body signal, X axis, Standard deviation
TimeBodyAccelerometerStandardDevitaionY	 real. Time domain, accelerometer body signal, Y axis, Standard deviation
TimeBodyAccelerometerStandardDevitaionZ	 real. Time domain, accelerometer body signal, Z axis, Standard deviation
TimeGravityAccelerometerMeanX	 real. Time domain, accelerometer body signal, X axis, Mean value
TimeGravityAccelerometerMeanY	 real. Time domain, accelerometer body signal, Y axis, Mean value
TimeGravityAccelerometerMeanZ	 real. Time domain, accelerometer body signal, Z axis, Mean value
TimeGravityAccelerometerStandardDevitaionX	 real. Time domain, accelerometer body signal, X axis, Standard deviation
TimeGravityAccelerometerStandardDevitaionY	 real. Time domain, accelerometer body signal, Y axis, Standard deviation
TimeGravityAccelerometerStandardDevitaionZ	 real. Time domain, accelerometer body signal, Z axis, Standard deviation
TimeBodyAccelerometerJerkMeanX	 real. Time domain, accelerometer body jerk signal, X axis, Mean value
TimeBodyAccelerometerJerkMeanY	 real. Time domain, accelerometer body jerk signal, Y axis, Mean value
TimeBodyAccelerometerJerkMeanZ	 real. Time domain, accelerometer body jerk signal, Z axis, Mean value
TimeBodyAccelerometerJerkStandardDevitaionX	 real. Time domain, accelerometer body jerk signal, X axis, Standard deviation
TimeBodyAccelerometerJerkStandardDevitaionY	 real. Time domain, accelerometer body jerk signal, Y axis, Standard deviation
TimeBodyAccelerometerJerkStandardDevitaionZ	 real. Time domain, accelerometer body jerk signal, Z axis, Standard deviation
TimeBodyGyroscopeMeanX	 real. Time domain, gyroscope body signal, X axis, Mean value
TimeBodyGyroscopeMeanY	 real. Time domain, gyroscope body signal, Y axis, Mean value
TimeBodyGyroscopeMeanZ	 real. Time domain, gyroscope body signal, Z axis, Mean value
TimeBodyGyroscopeStandardDevitaionX	 real. Time domain, gyroscope body signal, X axis, Standard deviation
TimeBodyGyroscopeStandardDevitaionY	 real. Time domain, gyroscope body signal, Y axis, Standard deviation
TimeBodyGyroscopeStandardDevitaionZ	 real. Time domain, gyroscope body signal, Z axis, Standard deviation
TimeBodyGyroscopeJerkMeanX	 real. Time domain, gyroscope body jerk signal, X axis, Mean value
TimeBodyGyroscopeJerkMeanY	 real. Time domain, gyroscope body jerk signal, Y axis, Mean value
TimeBodyGyroscopeJerkMeanZ	 real. Time domain, gyroscope body jerk signal, Z axis, Mean value
TimeBodyGyroscopeJerkStandardDevitaionX	 real. Time domain, gyroscope body jerk signal, X axis, Standard deviation
TimeBodyGyroscopeJerkStandardDevitaionY	 real. Time domain, gyroscope body jerk signal, Y axis, Standard deviation
TimeBodyGyroscopeJerkStandardDevitaionZ	 real. Time domain, gyroscope body jerk signal, Z axis, Standard deviation
TimeBodyAccelerometerMagnitudeMean	 real. Time domain, accelerometer body signal magnitude, Mean value
TimeBodyAccelerometerMagnitudeStandardDevitaion	 real. Time domain, accelerometer body signal magnitude, Standard deviation
TimeGravityAccelerometerMagnitudeMean	 real. Time domain, accelerometer gravity signal magnitude, Mean value
TimeGravityAccelerometerMagnitudeStandardDevitaion	 real. Time domain, accelerometer gravity signal magnitude, Standard deviation
TimeBodyAccelerometerJerkMagnitudeMean	 real. Time domain, accelerometer body jerk signal magnitude, Mean value
TimeBodyAccelerometerJerkMagnitudeStandardDevitaion	 real. Time domain, accelerometer body jerk signal magnitude, Standard deviation
TimeBodyGyroscopeMagnitudeMean	 real. Time domain, gyroscope body signal magnitude, Mean value
TimeBodyGyroscopeMagnitudeStandardDevitaion	 real. Time domain, gyroscope body signal magnitude, Standard deviation
TimeBodyGyroscopeJerkMagnitudeMean	 real. Time domain, gyroscope body jerk signal magnitude, Mean value
TimeBodyGyroscopeJerkMagnitudeStandardDevitaion	 real. Time domain, gyroscope body jerk signal magnitude, Standard deviation
FreqBodyAccelerometerMeanX	 real. Frequency domain, accelerometer body signal, X axis, Mean value
FreqBodyAccelerometerMeanY	 real. Frequency domain, accelerometer body signal, Y axis, Mean value
FreqBodyAccelerometerMeanZ	 real. Frequency domain, accelerometer body signal, Z axis, Mean value
FreqBodyAccelerometerStandardDevitaionX	 real. Frequency domain, accelerometer body signal, X axis, Standard deviation
FreqBodyAccelerometerStandardDevitaionY	 real. Frequency domain, accelerometer body signal, Y axis, Standard deviation
FreqBodyAccelerometerStandardDevitaionZ	 real. Frequency domain, accelerometer body signal, Z axis, Standard deviation
FreqBodyAccelerometerJerkMeanX	 real. Frequency domain, accelerometer body jerk signal, X axis, Mean value
FreqBodyAccelerometerJerkMeanY	 real. Frequency domain, accelerometer body jerk signal, Y axis, Mean value
FreqBodyAccelerometerJerkMeanZ	 real. Frequency domain, accelerometer body jerk signal, Z axis, Mean value
FreqBodyAccelerometerJerkStandardDevitaionX	 real. Frequency domain, accelerometer body jerk signal, X axis, Standard deviation
FreqBodyAccelerometerJerkStandardDevitaionY	 real. Frequency domain, accelerometer body jerk signal, Y axis, Standard deviation
FreqBodyAccelerometerJerkStandardDevitaionZ	 real. Frequency domain, accelerometer body jerk signal, Z axis, Standard deviation
FreqBodyGyroscopeMeanX	 real. Frequency domain, gyroscope body signal, X axis, Mean value
FreqBodyGyroscopeMeanY	 real. Frequency domain, gyroscope body signal, Y axis, Mean value
FreqBodyGyroscopeMeanZ	 real. Frequency domain, gyroscope body signal, Z axis, Mean value
FreqBodyGyroscopeStandardDevitaionX	 real. Frequency domain, gyroscope body signal, X axis, Standard deviation
FreqBodyGyroscopeStandardDevitaionY	 real. Frequency domain, gyroscope body signal, Y axis, Standard deviation
FreqBodyGyroscopeStandardDevitaionZ	 real. Frequency domain, gyroscope body signal, Z axis, Standard deviation
FreqBodyAccelerometerMagnitudeMean	 real. Frequency domain, accelerometer body signal magnitude, Mean value
FreqBodyAccelerometerMagnitudeStandardDevitaion	 real. Frequency domain, accelerometer body signal magnitude, Standard deviation
FreqBodyAccelerometerJerkMagnitudeMean	 real. Frequency domain, accelerometer body jerk signal magnitude, Mean value
FreqBodyAccelerometerJerkMagnitudeStandardDevitaion	 real. Frequency domain, accelerometer body jerk signal magnitude, Standard deviation
FreqBodyGyroscopeMagnitudeMean	 real. Frequency domain, gyroscope body signal magnitude, Mean value
FreqBodyGyroscopeMagnitudeStandardDevitaion	 real. Frequency domain, gyroscope body signal magnitude, Standard deviation
FreqBodyGyroscopeJerkMagnitudeMean	 real. Frequency domain, gyroscope body jerk signal magnitude, Mean value
FreqBodyGyroscopeJerkMagnitudeStandardDevitaion	 real. Frequency domain, gyroscope body jerk signal magnitude, Standard deviation

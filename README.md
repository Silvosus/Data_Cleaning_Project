# Data_Cleaning_Project
Getting and Cleaning Data Course Project with R script

Data Set Information:

A series of experiments have been carried out with a group of 30 volunteers. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone on the waist. Using its embedded accelerometer and gyroscope, the scientist captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The data were on the WEB in 6 files:

subject_test.txt
subject_train.txt
x_test.txt
y_test.txt
x_train.txt
y_train.txt
features.txt
activity_labels.txt

Transformation carried aout by the script:

It was binded the "training set" and the "test set" to create one data set.

There were the same number of observations in x_test, y_test and subject_test, so they merged.
There were the same number of observations in x_train, y_train and subject_train, so they merged.

The features were added to each 561 variables.

Were of interest only the variables with mean or standard deviation, so the remaining were deleted from the data set.

The activity labels were added to each activity.

The resultant data set variables were appropriately labeled with descriptive names.

Finally, was generated an independent tidy data set with the average of each variable for each activity and each subject: 36 cases with 88 variables.
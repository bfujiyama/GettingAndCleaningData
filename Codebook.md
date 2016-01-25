#Codebook for tidy dataset

##Source
Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
This dataset is based on collection by wearable technology. The original description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Dataset Information
The README in the dataset explains how the data was collected and arranged:  
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  

The set of variables that were estimated and kept for this assignment from the original signals are:  
+ mean(): Mean value  
+ std(): Standard deviation
 
These variables identify the unique subject/activity pair the variables relate to:

+ Subject: the integer subject ID  
+ Activity: the string activity name  
  * Walking  
  * Walking Upstairs  
  * Walking Downstairs  
  * Sitting  
  * Standing  
  * Laying  

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:  

+ gravityMean  
+ tBodyAccMean  
+ tBodyAccJerkMean  
+ tBodyGyroMean  
+ tBodyGyroJerkMean  

Other estimates have been removed for the purpose of this excercise.


#Codebook for tidy dataset

##Source
Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
This dataset is based on collection by wearable technology. The original description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Dataset Information
The README in the dataset explains how the data was collected and arranged:  
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  

More infomation is available in the README file of the dataset.

The set of variables that were estimated and kept for this assignment from the original signals are:  
+ mean(): Mean value  
+ std(): Standard deviation  
 
The mean and std variables mean that the following features are listed:  
 [1] "tBodyAccMeanX"                     
 [2] "tBodyAccMeanY"                     
 [3] "tBodyAccMeanZ"                     
 [4] "tBodyAccStdX"                      
 [5] "tBodyAccStdY"                      
 [6] "tBodyAccStdZ"                      
 [7] "tGravityAccMeanX"                  
 [8] "tGravityAccMeanY"                  
 [9] "tGravityAccMeanZ"                  
[10] "tGravityAccStdX"                   
[11] "tGravityAccStdY"                   
[12] "tGravityAccStdZ"                   
[13] "tBodyAccJerkMeanX"                 
[14] "tBodyAccJerkMeanY"                 
[15] "tBodyAccJerkMeanZ"                 
[16] "tBodyAccJerkStdX"                  
[17] "tBodyAccJerkStdY"                  
[18] "tBodyAccJerkStdZ"                  
[19] "tBodyGyroMeanX"                    
[20] "tBodyGyroMeanY"                    
[21] "tBodyGyroMeanZ"                    
[22] "tBodyGyroStdX"                     
[23] "tBodyGyroStdY"                     
[24] "tBodyGyroStdZ"                     
[25] "tBodyGyroJerkMeanX"                
[26] "tBodyGyroJerkMeanY"                
[27] "tBodyGyroJerkMeanZ"                
[28] "tBodyGyroJerkStdX"                 
[29] "tBodyGyroJerkStdY"                 
[30] "tBodyGyroJerkStdZ"                 
[31] "tBodyAccMagMean"                   
[32] "tBodyAccMagStd"                    
[33] "tGravityAccMagMean"                
[34] "tGravityAccMagStd"                 
[35] "tBodyAccJerkMagMean"               
[36] "tBodyAccJerkMagStd"                
[37] "tBodyGyroMagMean"                  
[38] "tBodyGyroMagStd"                   
[39] "tBodyGyroJerkMagMean"              
[40] "tBodyGyroJerkMagStd"               
[41] "fBodyAccMeanX"                     
[42] "fBodyAccMeanY"                     
[43] "fBodyAccMeanZ"                     
[44] "fBodyAccStdX"                      
[45] "fBodyAccStdY"                      
[46] "fBodyAccStdZ"                      
[47] "fBodyAccMeanFreqX"                 
[48] "fBodyAccMeanFreqY"                 
[49] "fBodyAccMeanFreqZ"                 
[50] "fBodyAccJerkMeanX"                 
[51] "fBodyAccJerkMeanY"                 
[52] "fBodyAccJerkMeanZ"                 
[53] "fBodyAccJerkStdX"                  
[54] "fBodyAccJerkStdY"                  
[55] "fBodyAccJerkStdZ"                  
[56] "fBodyAccJerkMeanFreqX"             
[57] "fBodyAccJerkMeanFreqY"             
[58] "fBodyAccJerkMeanFreqZ"             
[59] "fBodyGyroMeanX"                    
[60] "fBodyGyroMeanY"                    
[61] "fBodyGyroMeanZ"                    
[62] "fBodyGyroStdX"                     
[63] "fBodyGyroStdY"                     
[64] "fBodyGyroStdZ"                     
[65] "fBodyGyroMeanFreqX"                
[66] "fBodyGyroMeanFreqY"                
[67] "fBodyGyroMeanFreqZ"                
[68] "fBodyAccMagMean"                   
[69] "fBodyAccMagStd"                    
[70] "fBodyAccMagMeanFreq"               
[71] "fBodyBodyAccJerkMagMean"           
[72] "fBodyBodyAccJerkMagStd"            
[73] "fBodyBodyAccJerkMagMeanFreq"       
[74] "fBodyBodyGyroMagMean"              
[75] "fBodyBodyGyroMagStd"               
[76] "fBodyBodyGyroMagMeanFreq"          
[77] "fBodyBodyGyroJerkMagMean"          
[78] "fBodyBodyGyroJerkMagStd"           
[79] "fBodyBodyGyroJerkMagMeanFreq"      
[80] "angletBodyAccMean,gravity"         
[81] "angletBodyAccJerkMean,gravityMean" 
[82] "angletBodyGyroMean,gravityMean"    
[83] "angletBodyGyroJerkMean,gravityMean"
[84] "angleX,gravityMean"                
[85] "angleY,gravityMean"                
[86] "angleZ,gravityMean" 
 
These variables identify the unique subject/activity pair the variables relate to:

+ Subject: the integer subject ID  
+ Activity: the string activity name  
  * Walking  
  * Walking Upstairs  
  * Walking Downstairs  
  * Sitting  
  * Standing  
  * Laying  

Information about the variables used on the feature vector can be found in the features_info.txt file of the dataset.  
The complete list of variables of each feature vector is available in the features.txt file of the dataset. 

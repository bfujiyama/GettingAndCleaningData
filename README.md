# GettingAndCleaningData
Course project for Cousera/JHU Getting and Cleaning Data

UCI HAR Dataset is downloaded from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" and unzipped in the script. The features are unlabeled and can be found in x_test.txt. Activity labels can be found in y_test.txt. Test subjects are in subject_test.txt. 

Script "run_analysis.R" combines the training and test data sets, adds labels and extracts only the columns with mean and standard deviations calculations. 

The script then creates a tidy data set called "tidy.txt" that contains the means of all the columns per test subject and per test activity. "tidy.txt" is also uploaded to this repository.

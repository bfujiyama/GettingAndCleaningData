#You should create one R script called run_analysis.R that does the following.
#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each measurement.
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names.
#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

setwd("~/Classes/datasciencecoursera/Getting and Cleaning Data")
# Download data
if(!file.exists("data")){dir.create("data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="data/Dataset.zip")
# Unzip files
unzip(zipfile="data/Dataset.zip",exdir="data")

# View list of files
#path_rf <- file.path("data", "UCI HAR Dataset")
#files <- list.files(path_rf, recursive=TRUE)
#files

# Read training, test and activityLabels files
training = read.csv("data/UCI HAR Dataset/train/X_train.txt", sep = "", header = FALSE)
training[,562] = read.csv("data/UCI HAR Dataset/train/Y_train.txt", sep = "", header = FALSE)
training[,563] = read.csv("data/UCI HAR Dataset/train/subject_train.txt", sep = "", header = FALSE)

testing = read.csv("data/UCI HAR Dataset/test/X_test.txt", sep = "", header = FALSE)
testing[,562] = read.csv("data/UCI HAR Dataset/test/Y_test.txt", sep = "", header = FALSE)
testing[,563] = read.csv("data/UCI HAR Dataset/test/subject_test.txt", sep = "", header = FALSE)

activityLabels = read.csv("data/UCI HAR Dataset/activity_labels.txt", sep = "", header = FALSE)

# Read features and clean up
features = read.csv("data/UCI HAR Dataset/features.txt", sep = "", header = FALSE)
features[,2] = gsub('-mean', 'Mean', features[,2])
features[,2] = gsub('-std', 'Std', features[,2])
features[,2] = gsub('[-()]', '', features[,2])

# Merge training and test sets together
allData = rbind(training, testing)

# Extracts only mean and standard deviation data
cols <- grep(".*Mean.*|.*Std*", features[,2])
# Extract the mean and std in features
features <- features[cols,]
# Add two columns to the end for subject and activity
cols <- c(cols, 562, 563)
# Select only the mean and std columns in allData
allData <- allData[,cols]
# Add column names (features) to allData
colnames(allData) <- c(features$V2, "Activity", "Subject")
colnames(allData) <- tolower(colnames(allData))

# Change numeric activity class label to activity names
currentActivity = 1
for (currentActivityLabel in activityLabels$V2) {
  allData$activity <- gsub(currentActivity, currentActivityLabel, allData$activity)
  currentActivity <- currentActivity + 1
}

# Set activity and subject as factors
allData$activity <- as.factor(allData$activity)
allData$subject <- as.factor(allData$subject)

# Create tidy dataset with average for each activity and subject.
# (There are multiple observations for the same subject-activity pairing, so average the observations)
tidy = aggregate(allData, by=list(activity = allData$activity, subject=allData$subject), mean)
# Remove the subject and activity columns so as not to calculate their means
tidy[,90] = NULL
tidy[,89] = NULL
write.table(tidy, "data/tidy.txt", row.names = FALSE)

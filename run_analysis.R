## You should create one R script called run_analysis.R that does the following. 
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## SETUP
if (!require("data.table")) {
  install.packages("data.table")
}
if (!require("plyr")) {
  install.packages("plyr")
}
if (!require("dplyr")) {
  install.packages("dplyr")
}
require("data.table")
library(plyr)
library(dplyr)

## 1 

## TRAIN
subject_train <- read.table(".\\UCI HAR Dataset\\train\\subject_train.txt")
x_train <- read.table(".\\UCI HAR Dataset\\train\\X_train.txt")
y_train <- read.table(".\\UCI HAR Dataset\\train\\Y_train.txt")

## TEST
subject_test <- read.table(".\\UCI HAR Dataset\\test\\subject_test.txt")
x_test <- read.table(".\\UCI HAR Dataset\\test\\X_test.txt")
y_test <- read.table(".\\UCI HAR Dataset\\test\\Y_test.txt")

## MERGE 
x_merge <- rbind(x_train, x_test)
y_merge <- rbind(y_train, y_test)
subject_merge <- rbind(subject_train, subject_test)


## 2
features <- read.table(".\\UCI HAR Dataset\\features.txt")[,2]
mean_and_std_deviation <- grep("-(mean|std)\\(\\)", features)
x_merge <- x_merge[, mean_and_std_deviation]
names(x_merge) <- features[mean_and_std_deviation]

## 3
activity_table <- read.table(".\\UCI HAR Dataset\\activity_labels.txt")
y_merge[, 1] <- activity_table[y_merge[, 1], 2]
names(y_merge) <- "activity"

## 4
names(subject_merge) <- "subject"
result <- cbind(x_merge, y_merge, subject_merge)

## 5
tidy_data <- ddply(result, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(result, "result.txt", row.name=FALSE)

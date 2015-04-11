# Getting and Cleaning Data
## Getting and Cleaning Data Course Project

### How the script works

- Download or clone this repository
- run the run_analysis.R in R.

The dataset present here was downloaded from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

 A full description is available at the site where the data was obtained is here: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### What the script do

The script merges the training and the test sets to create one data set. After, it extracts only the measurements on the mean and standard deviation for each measurement. Then uses descriptive activity names to name the activities in the data set and appropriately labels the data set with descriptive variable names. Finnaly, from the data set, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


### Dependencies

This scripts depends on data.table, plyr and dplyr libraries, which will be downloaded if they won't present on libraries in R

#### FileTree

* README.md
* UCI HAR Dataset
    * README.txt
    * activity_labels.txt
    * features.txt
    * features_info.txt
    * test
        * Inertial Signals
            * body_acc_x_test.txt
            * body_acc_y_test.txt
            * body_acc_z_test.txt
            * body_gyro_x_test.txt
            * body_gyro_y_test.txt
            * body_gyro_z_test.txt
            * total_acc_x_test.txt
            * total_acc_y_test.txt
            * total_acc_z_test.txt
        * X_test.txt
        * subject_test.txt
        * y_test.txt
    * train
        * Inertial Signals
            * body_acc_x_train.txt
            * body_acc_y_train.txt
            * body_acc_z_train.txt
            * body_gyro_x_train.txt
            * body_gyro_y_train.txt
            * body_gyro_z_train.txt
            * total_acc_x_train.txt
            * total_acc_y_train.txt
            * total_acc_z_train.txt
        * X_train.txt
        * subject_train.txt
        * y_train.txt
* codebook.md
* run_analysis.R
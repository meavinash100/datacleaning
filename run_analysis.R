#Data Science Track: Project
#Input: Input for this scrip Samsung acceleometer data set should be present 
#in the working directory. All the files should be present in a folder name "UCI HAR Dataset".
require("data.table")
if(!file.exists("../UCI HAR Dataset")){
      stop("No dataset available.")
}

# Read training data, test data, activity and feature data files
test_data_x <- read.table("../UCI HAR Dataset/test/X_test.txt", sep = "", header = FALSE)
test_data_activity <- read.table("../UCI HAR Dataset/test/y_test.txt", header = FALSE)
test_data_subject <- read.table("../UCI HAR Dataset/test/subject_test.txt", header = FALSE)
train_data_x <- read.table("../UCI HAR Dataset/train/X_train.txt", sep = "", header = FALSE)
train_data_actiity <- read.table("../UCI HAR Dataset/train/y_train.txt", header = FALSE)
train_data_subject <- read.table("../UCI HAR Dataset/train/subject_train.txt", header = FALSE)
feature_names <- read.csv("../UCI HAR Dataset/features.txt", sep = "", header = FALSE,
                          stringsAsFactors = FALSE)
#Naming the data frame


#Adding activity column to test and training data set
test_data_x$activity <- test_data_activity
train_data_x$activity <- train_data_actiity

#Adding test subject column to test and training data set
test_data_x$subject <- test_data_subject
train_data_x$subject <- train_data_subject

#Merging the training and test data set into one dataset (Task 1)

complete_data 

#calculation of mean and standard deviation for each variable (Task 2)



#Naming the activities in the dataset (Task 3)
#1 WALKING 2 WALKING_UPSTAIRS 3 WALKING_DOWNSTAIRS 4 SITTING 5 STANDING 6 LAYING



#Adding labels to the dataset from feature names (Task 4)
names(test_data_x) <- feature_names[,2]
names(train_data_x) <- feature_names[,2]


#Creating of second dats set with the average of each variable for each activity
#and each subject

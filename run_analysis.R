#Data Science Track: Project
#Input: Input for this scrip Samsung acceleometer data set should be present 
#in the working directory. All the files should be present in a folder name "UCI HAR Dataset".
require("data.table")
require("dplyr")
if(!file.exists("./UCI HAR Dataset")){
      stop("No dataset available.")
}

# Read training data, test data, activity and feature data files
test_data_x <- read.csv("./UCI HAR Dataset/test/X_test.txt", 
                        sep = "", 
                        header = FALSE)
test_data_activity <- read.csv("./UCI HAR Dataset/test/y_test.txt", 
                               header = FALSE)
test_data_subject <- read.csv("./UCI HAR Dataset/test/subject_test.txt", 
                              header = FALSE)
train_data_x <- read.csv("./UCI HAR Dataset/train/X_train.txt", sep = "", 
                         header = FALSE)
train_data_actiity <- read.csv("./UCI HAR Dataset/train/y_train.txt", 
                               header = FALSE)
train_data_subject <- read.csv("./UCI HAR Dataset/train/subject_train.txt", 
                               header = FALSE)
feature_names <- read.csv("./UCI HAR Dataset/features.txt", 
                          sep = "", 
                          header = FALSE,
                          stringsAsFactors = FALSE)
activity_labels <- read.csv("./UCI HAR Dataset/activity_labels.txt", 
                            sep = "", 
                            header = FALSE)

#Mergind the training and testing data
#Also adding activity and subject columns (Step 1)
complete_data <- rbind(test_data_x, train_data_x)
complete_sub_data <- rbind(test_data_subject, train_data_subject)
complete_activity_data <- rbind(test_data_activity, train_data_actiity)
complete_data <- cbind(complete_data, complete_sub_data, complete_activity_data) 


#Adding labels to the dataset from feature names (Task 4)

feature_names[,2] = gsub('-mean', 'Mean', feature_names[,2])
feature_names[,2] = gsub('-std', 'Std', feature_names[,2])
feature_names[,2] = gsub('[-()]', '', feature_names[,2])

#Extraction of mean and standard deviation readings only 

final_features <- grep(".*Mean.*|.*Std.*", feature_names[,2])
feature_names <- feature_names[final_features,]
final_features <- c(final_features, 562, 563 )

#Retaining only required columns for analysis i.e. mean and standard deviation columns (Step 2)
complete_data <- complete_data[, c(final_features)]

#Adding the column names (from features file) to the complete data (Step 3)
colnames(complete_data) <- c(feature_names[,2], "subject", "activity")



#Creating of labels for activity names (Step 4)
complete_data$activity <- as.factor(complete_data$activity)
complete_data$subject <- as.factor(complete_data$subject)
levels(complete_data$activity) <- levels(activity_labels$V2)


#Creating of second tidy dats set with the average of each variable for each activity
#and each subject

complete_data_dt <- as.data.table(complete_data)
final_data <- aggregate(complete_data_dt, 
                        by = list(activity = complete_data_dt$activity, 
                                  subject = complete_data_dt$subject), 
                        mean)
final_data <- final_data[,-(89:90)]

write.table(final_data, 
            "final_data.txt", 
            sep="\t", 
            row.name=FALSE)

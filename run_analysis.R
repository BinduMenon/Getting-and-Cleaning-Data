#Section 1#

#Set the working directory to D:\DataScience\Getting and Cleaning Data\Project

setwd("D:/DataScience/Getting and Cleaning Data/Project")

#Section 2#

#Set the variables for files and directories
 
  #Train dataset

  dataset_trainurl <- "D:/DataScience/Getting and Cleaning Data/Project/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/"
  x_train          <- paste(dataset_trainurl, "X_train.txt", sep = "")
  y_train          <- paste(dataset_trainurl, "y_train.txt", sep = "")
  subject_train    <- paste(dataset_trainurl, "subject_train.txt", sep = "")

  #Test dataset

  dataset_testurl <- "D:/DataScience/Getting and Cleaning Data/Project/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/"
  x_test          <- paste(dataset_testurl, "X_test.txt", sep = "")
  y_test          <- paste(dataset_testurl, "y_test.txt", sep = "")
  subject_test    <- paste(dataset_testurl, "subject_test.txt", sep = "")

  #Feature and Activities File

  dataset_url     <-  "D:/DataScience/Getting and Cleaning Data/Project/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/"
  features_file   <- paste(dataset_url, "features.txt", sep = "")
  activity_label  <- paste(dataset_url, "activity_labels.txt", sep = "")
  

#Section 3#

## Read the Tables

  # Read activities and features and assign Descriptive column names

    activity_labels <- read.table(activity_label, 
                                  stringsAsFactors=FALSE, 
                                  col.names=c("activity_id", "activity_name"))

    features <- read.table(features_file, 
                           stringsAsFactors=FALSE, 
                           col.names=c("feature_id", "feature_name"))

  # Read the Training Datasets 

  dataset_train_x       <- read.table(x_train, col.names=features[,"feature_name"])
  dataset_train_y       <- read.table(y_train, col.names=c("activity_id"))
  dataset_subject_train <- read.table(subject_train, col.names=c("subject_id"))

  # Read the Test Datasets 

  dataset_test_x       <- read.table(x_test, col.names=features[,"feature_name"])
  dataset_test_y       <- read.table(y_test, col.names=c("activity_id"))
  dataset_subject_test <- read.table(subject_test, col.names=c("subject_id"))

  # Combine the data tables Train and Test by rows
  x_combine <- rbind(dataset_train_x, dataset_test_x)
  y_combine <- rbind(dataset_train_y, dataset_test_y)
  subject_combine <- rbind(dataset_subject_train, dataset_subject_test)

#Section 4#
## Extract only the measurements on the mean and standard deviation for each measurement

  MeanSD_test <- cbind(dataset_subject_test, dataset_test_x[,grep("mean|std", 
                                                                colnames(dataset_test_x))], 

                       dataset_test_y)
#Section 5#
  # Bind "mean" and "std" columns with subject and test ID's.
  MeanSD_train <- cbind(dataset_subject_train, dataset_train_x[,grep("mean|std", 
                                                                   colnames(dataset_train_x))], 
                      dataset_train_y)

  # Append test and train data, and add an "activity_name" column.
  tidy_dataset <- merge(rbind(MeanSD_test, MeanSD_train), activity_labels, 
                      by=c("activity_id"))

#Section 6#

  # Make Clear Names

  names(tidy_dataset) <- gsub("^f", "Freq Domain ", names(tidy_dataset))
  names(tidy_dataset) <- gsub("^t", "Time Domain ", names(tidy_dataset))
  names(tidy_dataset) <- gsub("Acc", " Acceleration ", names(tidy_dataset))
  names(tidy_dataset) <- gsub("GyroJerk", " Angular Accel ", names(tidy_dataset))
  names(tidy_dataset) <- gsub("Gyro", " Angular Speed", names(tidy_dataset))
  names(tidy_dataset) <- gsub("Mag", " Magnitude", names(tidy_dataset))
  names(tidy_dataset) <- gsub(".mean", " Mean ", names(tidy_dataset))
  names(tidy_dataset) <- gsub(".std", " Std Dev ", names(tidy_dataset))

#Section 7#
  # Save the tidy dataset.
  write.table(tidy_dataset, row.name=FALSE, file="tidy_dataset.txt")

#Section 8#
  # Create a second tidy dataset with the average of each variable for each activity mean

  z <- tidy_dataset[, 3:dim(tidy_dataset)[2]]

  avg_tidy_dataset <- aggregate(z, list(tidy_dataset$subject_id,
                                      tidy_dataset$activity_id), mean)
  
  names(avg_tidy_dataset)[1] <- "Subject"
  names(avg_tidy_dataset)[2] <- "Activity"

  # Save the Average tidy dataset.
  write.table(avg_tidy_dataset, row.name=FALSE, file="avg_tidy_dataset.txt")



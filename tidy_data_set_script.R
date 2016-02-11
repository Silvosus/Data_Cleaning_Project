tidy_data_set <- function(){
  
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  zipfile <- "./getdata-projectfiles-UCI HAR Dataset.zip"
  

  if (!file.exists(zipfile)){
    download.file(url, destfile=zipfile)
  }
  unzip(zipfile, exdir=".")
  
  # read the data sets
  subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header= FALSE)
  subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header= FALSE)
  x_test <- read.table("./UCI HAR Dataset/test/x_test.txt", header= FALSE)
  y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header= FALSE)
  x_train <- read.table("./UCI HAR Dataset/train/x_train.txt", header= FALSE)
  y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header= FALSE)
  features <- read.table("./UCI HAR Dataset/features.txt", header= FALSE, stringsAsFactors = FALSE)
  activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", header= FALSE)
  
  # There are the same number of observations in x_test, y_test and subject_test
  # There are the same number of observations in x_train, y_train and subject_train
  
  #1. Merges the training and the test sets to create one data set.
  
  # bind train sets after test sets
  x_data = rbind(x_test,x_train)
  y_data = rbind(y_test,y_train)
  subjects <- rbind(subject_test,subject_train)
  # delete from memory the old data frames
  rm(x_test,y_test,x_train,y_train,subject_test,subject_train)
  
  # 2. Extracts only the measurements on the mean and standard deviation for each measurement.
  
  # There are 561 Features and 561 variables in x_data so, features are the column names of the x_data set
  colnames(x_data) <- features[,2]
  
  # Features_info.txt explains that they used mean(): Mean value and std(): Standard deviation
  
  # I keep only columns which names have 'mean' or 'std'
  x_data_res <- grep("(.*)(mean)(.*)|(.*)(std)(.*)",colnames(x_data),value=TRUE,ignore.case=TRUE)
  x_data <- subset(x_data, select = x_data_res)
  
  # 3. Uses descriptive activity names to name the activities in the data set
  
  #Add the subjects ID to each row of x_data
  x_data = cbind(subjects,x_data)
  names(x_data)[names(x_data)=="V1"] <- "subject"
  
  # There are six values in y_data and six activities in activity_labels so I merged both
  y_data <- merge(y_data,activity_labels,by.x="V1",by.y="V1",all=TRUE)
  # remove the first column because there was no information in it
  y_data <- subset(y_data, select = -c(V1))
  
  # Add y_data in front of x_data
  x_data = cbind(y_data,x_data)
  names(x_data)[names(x_data)=="V2"] <- "activity"
  
  # 4. Appropriately labels the data set with descriptive variable names.
  
  #columns' name must be understandable
  colnames(x_data) <- gsub("-","_",colnames(x_data))
  colnames(x_data) <- gsub("[()]","",colnames(x_data))
  colnames(x_data) <- gsub(",","_",colnames(x_data))
  colnames(x_data) <- gsub("tBody","time_Body",colnames(x_data))
  colnames(x_data) <- gsub("tGravity","time_Gravity",colnames(x_data))
  colnames(x_data) <- gsub("fBody","frequency_domain_signals_Body",colnames(x_data))
  colnames(x_data) <- gsub("fGravity","frequency_domain_signals_Gravity",colnames(x_data))
  colnames(x_data) <- gsub("BodyAcc","Body_acceleration_",colnames(x_data))
  colnames(x_data) <- gsub("BodyGyro","Body_Gyroscope_",colnames(x_data))
  colnames(x_data) <- gsub("GravityAcc_","Gravity_acceleration_",colnames(x_data))
  colnames(x_data) <- gsub("GravityAccMag","Gravity_acceleration_Magnitude",colnames(x_data))
  colnames(x_data) <- gsub("JerkMag","Jerk_Magnitude",colnames(x_data))
  colnames(x_data) <- gsub("Mag_","Magnitude_",colnames(x_data))
  colnames(x_data) <- gsub("gravityMean","Gravity_Mean",colnames(x_data))
  colnames(x_data) <- gsub("angletime","angle_time",colnames(x_data))
  names(x_data)
  
  # 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  
  # res <- aggregate(x_data[,3:88], list(x_data$activity,x_data$subject), mean)
  # The "aggregate" function doesn't worked for me (because I had not added the parameter stringAsFactor = FALSE to the "read.table" instruction), so I have used the library "lapply" on a "data.table" structure.
  if('data.table' %in% rownames(installed.packages())){
    library(data.table)
  } else {
    install.packages('data.table')
    library(data.table)
  }
 
  tidy_data <- data.table(x_data)
  tidy_data <- tidy_data[, lapply(.SD, mean), by=list(tidy_data$activity,tidy_data$subject)]
  names(tidy_data)[1] <- 'activity'
  names(tidy_data)[2] <- 'subject'
  write.csv(tidy_data,'tidy_data_set.csv',row.names=FALSE)
}
# Read in all of the data
X_train <- read.table("./train/X_train.txt")
y_train <- read.table("./train/y_train.txt")
names(y_train)[1] <- "activity"
X_test <- read.table("./test/X_test.txt")
y_test <- read.table("./test/y_test.txt")
names(y_test)[1] <- "activity"
subject_train <- read.table("./train/subject_train.txt")
names(subject_train)[1] <- "subject"
subject_test <- read.table("./test/subject_test.txt")
names(subject_test)[1] <- "subject"
activity_labels <- read.table("./activity_labels.txt")
names(activity_labels) <- c("label", "description")
features <- read.table("./features.txt", stringsAsFactors = FALSE)
names(features) <- c("column", "name")
# 1. Merge the training and the test sets to create one data set
X_train <- cbind(X_train, subject_train, y_train)
X_test <- cbind(X_test, subject_test, y_test)
# store all the data in a variable named data
data <- rbind(X_train, X_test)
# 2. Extract only the measurements on the mean and standard deviation for each measurement
desiredCols <- grep("*mean\\(\\)*|*std\\(\\)*", features$name)
library(dplyr)
data <- select(data,desiredCols,subject,activity)
# 3. Use descriptive activity names to name the activities in the data set
data$activity <- sapply(data$activity, function(x){activity_labels$description[activity_labels$label==x]})
# 4. Appropriately label the data set with descriptive variable names  
names(data) <- c(features$name[desiredCols],"subject","activity")
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each 
# variable for each activity and each subject
tidy_data <- group_by(data, activity, subject) %>% summarise_all(.funs=mean)
# write the data to file
write.table(tidy_data, file="tidy_data.txt", row.names=FALSE)

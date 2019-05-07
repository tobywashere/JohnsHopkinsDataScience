The run_analysis.R script takes in the raw data files from the UCI HAR Dataset as input and generates the tidy_data.txt table with the averages of various acceleration and gyroscope measurements.
The script must be run in the same working directory as the root directory of the UCI HAR Dataset.
The output file tidy_data.txt will be written to the current working directory, so it will appear in the root directory of the UCI HAR Dataset.

The script performs the following steps:
1. Merges the training and the test sets to create one data set
2. Extracts only the measurements on the mean and standard deviation for each measurement
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
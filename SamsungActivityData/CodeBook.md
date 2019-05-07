Description of variables in tidy_data.txt
The raw data was collected from the accelerometer and gyroscope measurements of 30 subjects doing various activities (walking, walking upstairs, walking downstairs, sitting, standing and laying) using a Samsung Galaxy S II phone. The raw data was processed into a tidy format that includes one row for each subject and activity, and the averages of the variables described below. Since there are 30 subjects and six activities, there are 180 rows in the tidy dataset.

activity
- The activity being performed by the subject. One of laying, sitting, standing, walking, walking downstairs or walking upstairs

subject
- The id of the person performing the activity. Since there were 30 subjects, the id ranges from 1 to 30

The following variables were measured over time at a constant rate of 50Hz. Note the 't' prefix to indicate time domain signals.
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
- The mean linear acceleration of the body in the X, Y or Z dimensions over time. The raw data was measured in standard gravity units 'g' but the tidy data has been normalized to a [-1,1] scale.

tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
- The mean standard deviation of the linear acceleration measurement described above.

tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
- The mean gravity component factored out of the raw linear acceleration measurement. Measured in the X, Y or Z dimensions over time. The raw data was measured in standard gravity units 'g' but the tidy data has been normalized to a [-1,1] scale.

tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
- The mean standard deviation of the gravity acceleration component described above.

tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
- Jerk signals derived from body linear acceleration measurements in time. The mean over the X, Y or Z dimensions is displayed on a normalized [-1,1] scale.

tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
- the mean standard deviation of the acceleration Jerk signal described above.

tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
- The mean angular velocity measurements from the gyroscope over time in the X, Y and Z dimensions. Raw measurements were in units of radians per second. The tidy data has been normalized to a [-1,1] scale.

tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
- The mean standard deviation of the gyroscope measurements described above.

tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
- Jerk signals derived from angular velocity measurements in time. The mean over the X, Y or Z dimensions is displayed on a normalized [-1,1] scale.

tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
- The mean standard deviation of the gyroscope Jerk signal described above.

tBodyAccMag-mean()
- Mean magnitude of the body acceleration measurements over the X, Y and Z dimensions using the Euclidian norm.

tBodyAccMag-std()
- Mean standard deviation of the body acceleration magnitude described above.

tGravityAccMag-mean()
- Mean magnitude of the gravity acceleration measurements over the X, Y and Z dimensions using the Euclidian norm.

tGravityAccMag-std()
- Mean standard deviation of the gravity acceleration magnitude described above.

tBodyAccJerkMag-mean()
- Mean magnitude of the body Jerk signal over the X, Y and Z dimensions using the Euclidian norm.

tBodyAccJerkMag-std()
- Mean standard deviation of the body Jerk signal magnitude described above.

tBodyGyroMag-mean()
- Mean magnitude of the body gyroscope measurements over the X, Y and Z dimensions using the Euclidian norm.

tBodyGyroMag-std()
- Mean standard deviation of the body gyroscope magnitude described above.

tBodyGyroJerkMag-mean()
- Mean magnitude of the body gyroscope Jerk signal over the X, Y and Z dimensions using the Euclidian norm.

tBodyGyroJerkMag-std()
- Mean standard deviation of the body gyroscope Jerk signal described above.

The following variables are derived from the variables above by processing using a Fast Fourier Transform (FFT). Note the 'f' prefix to indicate frequency domain signals.
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyAccMag-mean()
fBodyAccMag-std()
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std()

See features_info.txt in the UCI HAR Dataset for more detailed variable descriptions.

References
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
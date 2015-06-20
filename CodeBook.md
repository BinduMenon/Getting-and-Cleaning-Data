---
### Code Book for run_analysis.R #####
---

This document describes the code inside run_analysis.R and the file layout for the output files.

### runanalysis.R ####

The code is split in 8 sections as follows

Section 1 : Set the working directory to my local directory
Section 2 : Set the variables for files and directories
Section 3 : Read the Tables
Section 4 : Extract only the mean and standard deviation measurements
Section 5 : Merge test and train data
Section 6 : Poplulate column names with meaningful names
Section 7 : Save the Tidy DataSet
Section 8 : Calculate the average and save the new dataset

### Output files ####
There are 2 output files that are produced by run_analysis.R

1 : tidy_dataset
2 : avg_tidy_dataset

Data File, tidy_dataset, has 83 columns. 

Columns 3 to Column 83 are aggregate measurements (either mean or standard deviation). 

The 83 columns are as follows : 

activity_id - Records the activity.
subject_id - integer (1..30) identifying an subject holding a smartphone 
Time Domain Body Acceleration  Mean ...X
Time Domain Body Acceleration  Mean ...Y
Time Domain Body Acceleration  Mean ...Z
Time Domain Body Acceleration  Std Dev ...X
Time Domain Body Acceleration  Std Dev ...Y
Time Domain Body Acceleration  Std Dev ...Z
Time Domain Gravity Acceleration  Mean ...X
Time Domain Gravity Acceleration  Mean ...Y
Time Domain Gravity Acceleration  Mean ...Z
Time Domain Gravity Acceleration  Std Dev ...X
Time Domain Gravity Acceleration  Std Dev ...Y
Time Domain Gravity Acceleration  Std Dev ...Z
Time Domain Body Acceleration Jerk Mean ...X
Time Domain Body Acceleration Jerk Mean ...Y
Time Domain Body Acceleration Jerk Mean ...Z
Time Domain Body Acceleration Jerk Std Dev ...X
Time Domain Body Acceleration Jerk Std Dev ...Y
Time Domain Body Acceleration Jerk Std Dev ...Z
Time Domain Body Angular Speed Mean ...X
Time Domain Body Angular Speed Mean ...Y
Time Domain Body Angular Speed Mean ...Z
Time Domain Body Angular Speed Std Dev ...X
Time Domain Body Angular Speed Std Dev ...Y
Time Domain Body Angular Speed Std Dev ...Z
Time Domain Body Angular Accel  Mean ...X
Time Domain Body Angular Accel  Mean ...Y
Time Domain Body Angular Accel  Mean ...Z
Time Domain Body Angular Accel  Std Dev ...X
Time Domain Body Angular Accel  Std Dev ...Y
Time Domain Body Angular Accel  Std Dev ...Z
Time Domain Body Acceleration  Magnitude Mean ..
Time Domain Body Acceleration  Magnitude Std Dev ..
Time Domain Gravity Acceleration  Magnitude Mean ..
Time Domain Gravity Acceleration  Magnitude Std Dev ..
Time Domain Body Acceleration Jerk Magnitude Mean ..
Time Domain Body Acceleration Jerk Magnitude Std Dev ..
Time Domain Body Angular Speed Magnitude Mean ..
Time Domain Body Angular Speed Magnitude Std Dev ..
Time Domain Body Angular Accel  Magnitude Mean ..
Time Domain Body Angular Accel  Magnitude Std Dev ..
Freq Domain Body Acceleration  Mean ...X
Freq Domain Body Acceleration  Mean ...Y
Freq Domain Body Acceleration  Mean ...Z
Freq Domain Body Acceleration  Std Dev ...X
Freq Domain Body Acceleration  Std Dev ...Y
Freq Domain Body Acceleration  Std Dev ...Z
Freq Domain Body Acceleration  Mean Freq...X
Freq Domain Body Acceleration  Mean Freq...Y
Freq Domain Body Acceleration  Mean Freq...Z
Freq Domain Body Acceleration Jerk Mean ...X
Freq Domain Body Acceleration Jerk Mean ...Y
Freq Domain Body Acceleration Jerk Mean ...Z
Freq Domain Body Acceleration Jerk Std Dev ...X
Freq Domain Body Acceleration Jerk Std Dev ...Y
Freq Domain Body Acceleration Jerk Std Dev ...Z
Freq Domain Body Acceleration Jerk Mean Freq...X
Freq Domain Body Acceleration Jerk Mean Freq...Y
Freq Domain Body Acceleration Jerk Mean Freq...Z
Freq Domain Body Angular Speed Mean ...X
Freq Domain Body Angular Speed Mean ...Y
Freq Domain Body Angular Speed Mean ...Z
Freq Domain Body Angular Speed Std Dev ...X
Freq Domain Body Angular Speed Std Dev ...Y
Freq Domain Body Angular Speed Std Dev ...Z
Freq Domain Body Angular Speed Mean Freq...X
Freq Domain Body Angular Speed Mean Freq...Y
Freq Domain Body Angular Speed Mean Freq...Z
Freq Domain Body Acceleration  Magnitude Mean ..
Freq Domain Body Acceleration  Magnitude Std Dev ..
Freq Domain Body Acceleration  Magnitude Mean Freq..
Freq Domain Body Acceleration Jerk Magnitude Mean ..
Freq Domain Body Acceleration Jerk Magnitude Std Dev ..
Freq Domain Body Acceleration Jerk Magnitude Mean Freq..
Freq Domain Body Angular Speed Magnitude Mean ..
Freq Domain Body Angular Speed Magnitude Std Dev ..
Freq Domain Body Angular Speed Magnitude Mean Freq..
Freq Domain Body Angular Accel  Magnitude Mean ..
Freq Domain Body Angular Accel  Magnitude Std Dev ..
Freq Domain Body Angular Accel  Magnitude Mean Freq..
activity_name - 
    The values can be
    LAYING, SITTING, STANDING, WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS




##Code book for Coursera Getting and Cleaning Data Course Project
###Description of Data set
* Data is pulled from Human Activity Recognition Using Smartphones Data Set UCI machine learning repository
* Data contains 561 attributes
* 2,947 rows(observations) in the test data set x_test.txt; and 7,352 rows (observations) in x_train.txt
* Reference link 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
###Data Transformations
* Consolidate training and test data set under data set "complete_data", also add subject and activity columns.
* Identify and retain only the columns that has mean and standard deviations
* Attach column names to the data set
* Convert activity and subject variables to factors and give meaningful names to activities
* Run aggregation across the data set grouping by activity and subject
* Write the summary to a file name "final_data.txt"

###Column Names
* First two columns are activity and subject
* Remaining columns with Mean and Std signify mean and standard deviation for that variable for specific activity for specific subject
1	activity
2	subject
3	tBodyAccMeanX
4	tBodyAccMeanY
5	tBodyAccMeanZ
6	tBodyAccStdX
7	tBodyAccStdY
8	tBodyAccStdZ
9	tGravityAccMeanX
10	tGravityAccMeanY
11	tGravityAccMeanZ
12	tGravityAccStdX
13	tGravityAccStdY
14	tGravityAccStdZ
15	tBodyAccJerkMeanX
16	tBodyAccJerkMeanY
17	tBodyAccJerkMeanZ
18	tBodyAccJerkStdX
19	tBodyAccJerkStdY
20	tBodyAccJerkStdZ
21	tBodyGyroMeanX
22	tBodyGyroMeanY
23	tBodyGyroMeanZ
24	tBodyGyroStdX
25	tBodyGyroStdY
26	tBodyGyroStdZ
27	tBodyGyroJerkMeanX
28	tBodyGyroJerkMeanY
29	tBodyGyroJerkMeanZ
30	tBodyGyroJerkStdX
31	tBodyGyroJerkStdY
32	tBodyGyroJerkStdZ
33	tBodyAccMagMean
34	tBodyAccMagStd
35	tGravityAccMagMean
36	tGravityAccMagStd
37	tBodyAccJerkMagMean
38	tBodyAccJerkMagStd
39	tBodyGyroMagMean
40	tBodyGyroMagStd
41	tBodyGyroJerkMagMean
42	tBodyGyroJerkMagStd
43	fBodyAccMeanX
44	fBodyAccMeanY
45	fBodyAccMeanZ
46	fBodyAccStdX
47	fBodyAccStdY
48	fBodyAccStdZ
49	fBodyAccMeanFreqX
50	fBodyAccMeanFreqY
51	fBodyAccMeanFreqZ
52	fBodyAccJerkMeanX
53	fBodyAccJerkMeanY
54	fBodyAccJerkMeanZ
55	fBodyAccJerkStdX
56	fBodyAccJerkStdY
57	fBodyAccJerkStdZ
58	fBodyAccJerkMeanFreqX
59	fBodyAccJerkMeanFreqY
60	fBodyAccJerkMeanFreqZ
61	fBodyGyroMeanX
62	fBodyGyroMeanY
63	fBodyGyroMeanZ
64	fBodyGyroStdX
65	fBodyGyroStdY
66	fBodyGyroStdZ
67	fBodyGyroMeanFreqX
68	fBodyGyroMeanFreqY
69	fBodyGyroMeanFreqZ
70	fBodyAccMagMean
71	fBodyAccMagStd
72	fBodyAccMagMeanFreq
73	fBodyBodyAccJerkMagMean
74	fBodyBodyAccJerkMagStd
75	fBodyBodyAccJerkMagMeanFreq
76	fBodyBodyGyroMagMean
77	fBodyBodyGyroMagStd
78	fBodyBodyGyroMagMeanFreq
79	fBodyBodyGyroJerkMagMean
80	fBodyBodyGyroJerkMagStd
81	fBodyBodyGyroJerkMagMeanFreq
82	angletBodyAccMean,gravity
83	angletBodyAccJerkMean,gravityMean
84	angletBodyGyroMean,gravityMean
85	angletBodyGyroJerkMean,gravityMean
86	angleX,gravityMean
87	angleY,gravityMean
88	angleZ,gravityMean


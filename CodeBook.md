### Codebook - R Assignment 'Getting and Cleaning Data' - 'Human Activity Recognition Using Smartphones'

The source data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The feature list and explanation are as follows (from the features_info.txt file within the project). Only the mean() and std() are extracted from the data:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

For each measure the mean() - Mean value and std() - Standard deviation are retained
A total of 33 measures, and 2 values per measure.

The source data is divided into a training and a test data set. Here, the data are combined into a single data set and columns for the subject id, the activity and source (training, test) are added to the final data set.

Total number of observations (n) = 10,299

Total number of subject=30

Number of observations for each subject:
--------------------------------------------------------------------------------
 1   2   3   4   5   6   7   8   9   10   11   12   13   14   15   16   17   18 
--- --- --- --- --- --- --- --- --- ---- ---- ---- ---- ---- ---- ---- ---- ----
347 316 323 328 366 368 360 408 321 372  409  392  376  382  344  341  383  302 
--------------------------------------------------------------------------------

Table: Table continues below

-----------------------------------------------------------
 19   20   21   22   23   24   25   26   27   28   29   30 
---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----
325  308  281  294  320  327  364  302  354  381  317  288 
-----------------------------------------------------------

Number of observations for each activity:
------------------------------------------------------------------------------
 LYING   SITTING   STANDING   WALKING   WALKING_DOWNSTAIRS   WALKING_UPSTAIRS 
------- --------- ---------- --------- -------------------- ------------------
 1944     1777       1906      1722            1406                1544       
------------------------------------------------------------------------------



Feature list and mean, std, min and max across all columns

                                  mean        std min max
tBodyAcc.mean.X            0.274347261 0.06762780  -1   1
tBodyAcc.mean.Y           -0.017743492 0.03712817  -1   1
tBodyAcc.mean.Z           -0.108925033 0.05303309  -1   1
tBodyAcc.std.X            -0.607783819 0.43869383  -1   1
tBodyAcc.std.Y            -0.510191378 0.50023977  -1   1
tBodyAcc.std.Z            -0.613064299 0.40365658  -1   1
tGravityAcc.mean.X         0.669226222 0.51548578  -1   1
tGravityAcc.mean.Y         0.004038791 0.37890922  -1   1
tGravityAcc.mean.Z         0.092150860 0.33427017  -1   1
tGravityAcc.std.X         -0.965207115 0.07771480  -1   1
tGravityAcc.std.Y         -0.954408027 0.08528662  -1   1
tGravityAcc.std.Z         -0.938900969 0.10155485  -1   1
tBodyAccJerk.mean.X        0.078938122 0.17611246  -1   1
tBodyAccJerk.mean.Y        0.007948107 0.16451839  -1   1
tBodyAccJerk.mean.Z       -0.004674698 0.15597899  -1   1
tBodyAccJerk.std.X        -0.639781021 0.40871182  -1   1
tBodyAccJerk.std.Y        -0.607971599 0.43288446  -1   1
tBodyAccJerk.std.Z        -0.762820240 0.27790139  -1   1
tBodyGyro.mean.X          -0.030982487 0.18318609  -1   1
tBodyGyro.mean.Y          -0.074719486 0.13431713  -1   1
tBodyGyro.mean.Z           0.088357304 0.13487526  -1   1
tBodyGyro.std.X           -0.721192598 0.30102707  -1   1
tBodyGyro.std.Y           -0.682653507 0.35688454  -1   1
tBodyGyro.std.Z           -0.653665674 0.37260608  -1   1
tBodyGyroJerk.mean.X      -0.096709275 0.12813496  -1   1
tBodyGyroJerk.mean.Y      -0.042318108 0.11440918  -1   1
tBodyGyroJerk.mean.Z      -0.054830350 0.12889561  -1   1
tBodyGyroJerk.std.X       -0.731348533 0.30381590  -1   1
tBodyGyroJerk.std.Y       -0.786062320 0.27271568  -1   1
tBodyGyroJerk.std.Z       -0.739932395 0.30199418  -1   1
tBodyAccMag.mean          -0.548221660 0.46709374  -1   1
tBodyAccMag.std           -0.591225327 0.42943135  -1   1
tGravityAccMag.mean       -0.548221660 0.46709374  -1   1
tGravityAccMag.std        -0.591225327 0.42943135  -1   1
tBodyAccJerkMag.mean      -0.649417951 0.38949421  -1   1
tBodyAccJerkMag.std       -0.627762946 0.41722133  -1   1
tBodyGyroMag.mean         -0.605248570 0.39970956  -1   1
tBodyGyroMag.std          -0.662533063 0.34922460  -1   1
tBodyGyroJerkMag.mean     -0.762137611 0.27651450  -1   1
tBodyGyroJerkMag.std      -0.777993173 0.27159019  -1   1
fBodyAcc.mean.X           -0.622761658 0.42079462  -1   1
fBodyAcc.mean.Y           -0.537493281 0.48168185  -1   1
fBodyAcc.mean.Z           -0.665033506 0.35885308  -1   1
fBodyAcc.std.X            -0.603356277 0.44679282  -1   1
fBodyAcc.std.Y            -0.528420010 0.47992499  -1   1
fBodyAcc.std.Z            -0.617874813 0.39897318  -1   1
fBodyAccJerk.mean.X       -0.656713525 0.38999462  -1   1
fBodyAccJerk.mean.Y       -0.628961180 0.40730011  -1   1
fBodyAccJerk.mean.Z       -0.743608246 0.29770821  -1   1
fBodyAccJerk.std.X        -0.654979817 0.39329181  -1   1
fBodyAccJerk.std.Y        -0.612243590 0.43352495  -1   1
fBodyAccJerk.std.Z        -0.780928428 0.25954359  -1   1
fBodyGyro.mean.X          -0.672094307 0.35149843  -1   1
fBodyGyro.mean.Y          -0.706216640 0.33566529  -1   1
fBodyGyro.mean.Z          -0.644192753 0.38201938  -1   1
fBodyGyro.std.X           -0.738594817 0.28577304  -1   1
fBodyGyro.std.Y           -0.674226935 0.36966468  -1   1
fBodyGyro.std.Z           -0.690446313 0.33731015  -1   1
fBodyAccMag.mean          -0.585962696 0.44532657  -1   1
fBodyAccMag.std           -0.659531217 0.35542882  -1   1
fBodyBodyAccJerkMag.mean  -0.620789916 0.42506406  -1   1
fBodyBodyAccJerkMag.std   -0.640076803 0.40602202  -1   1
fBodyBodyGyroMag.mean     -0.697411070 0.32370125  -1   1
fBodyBodyGyroMag.std      -0.699976372 0.31044311  -1   1
fBodyBodyGyroJerkMag.mean -0.779767633 0.26759165  -1   1
fBodyBodyGyroJerkMag.std  -0.792190209 0.25916006  -1   1

A second data set is provided with the values averaged by subject and activity. 

Number of observations (n) = 180, 6 for each subject, and 30 for each activity

Feature list and mean, std, min and max across all columns

                                mean         std         min          max
AvgtBodyAcc.mean.X            0.274302742 0.012164567  0.22159824  0.301461020
AvgtBodyAcc.mean.Y           -0.017875524 0.005771183 -0.04051395 -0.001308288
AvgtBodyAcc.mean.Z           -0.109163816 0.009581975 -0.15251390 -0.075378469
AvgtBodyAcc.std.X            -0.557690076 0.451691059 -0.99606864  0.626917071
AvgtBodyAcc.std.Y            -0.460462635 0.496565008 -0.99024095  0.616937015
AvgtBodyAcc.std.Z            -0.575560246 0.395543856 -0.98765866  0.609017879
AvgtGravityAcc.mean.X         0.697477506 0.487253359 -0.68004316  0.974508732
AvgtGravityAcc.mean.Y        -0.016212836 0.345237555 -0.47989484  0.956593814
AvgtGravityAcc.mean.Z         0.074127871 0.288791900 -0.49508872  0.957873042
AvgtGravityAcc.std.X         -0.963752531 0.025034388 -0.99676423 -0.829554948
AvgtGravityAcc.std.Y         -0.952429560 0.032655674 -0.99424765 -0.643578361
AvgtGravityAcc.std.Z         -0.936401042 0.040291171 -0.99095725 -0.610161166
AvgtBodyAccJerk.mean.X        0.079473560 0.012588014  0.04268810  0.130193044
AvgtBodyAccJerk.mean.Y        0.007565210 0.013576449 -0.03868721  0.056818586
AvgtBodyAccJerk.mean.Z       -0.004953403 0.013462100 -0.06745839  0.038053359
AvgtBodyAccJerk.std.X        -0.594946700 0.417586480 -0.99460454  0.544273037
AvgtBodyAccJerk.std.Y        -0.565414714 0.433087073 -0.98951357  0.355306717
AvgtBodyAccJerk.std.Z        -0.735957689 0.276847928 -0.99328831  0.031015708
AvgtBodyGyro.mean.X          -0.032437160 0.054051798 -0.20577543  0.192704476
AvgtBodyGyro.mean.Y          -0.074259572 0.035541494 -0.20420536  0.027470756
AvgtBodyGyro.mean.Z           0.087444647 0.036212492 -0.07245460  0.179102058
AvgtBodyGyro.std.X           -0.691639903 0.291018868 -0.99427659  0.267657219
AvgtBodyGyro.std.Y           -0.653302030 0.352025165 -0.99421047  0.476518714
AvgtBodyGyro.std.Z           -0.616435294 0.373026377 -0.98553836  0.564875818
AvgtBodyGyroJerk.mean.X      -0.096056796 0.023345835 -0.15721254 -0.022091627
AvgtBodyGyroJerk.mean.Y      -0.042692782 0.009532015 -0.07680899 -0.013202277
AvgtBodyGyroJerk.mean.Z      -0.054801883 0.012346970 -0.09249985 -0.006940664
AvgtBodyGyroJerk.std.X       -0.703632715 0.300836082 -0.99654254  0.179148650
AvgtBodyGyroJerk.std.Y       -0.763551835 0.267288478 -0.99708158  0.295945926
AvgtBodyGyroJerk.std.Z       -0.709559184 0.304539421 -0.99538079  0.193206499
AvgtBodyAccMag.mean          -0.497289667 0.472883374 -0.98649320  0.644604325
AvgtBodyAccMag.std           -0.543908671 0.431044752 -0.98646454  0.428405923
AvgtGravityAccMag.mean       -0.497289667 0.472883374 -0.98649320  0.644604325
AvgtGravityAccMag.std        -0.543908671 0.431044752 -0.98646454  0.428405923
AvgtBodyAccJerkMag.mean      -0.607929592 0.396527180 -0.99281472  0.434490401
AvgtBodyAccJerkMag.std       -0.584175610 0.422795277 -0.99464692  0.450612066
AvgtBodyGyroMag.mean         -0.565163077 0.397733844 -0.98074085  0.418004609
AvgtBodyGyroMag.std          -0.630394720 0.336882699 -0.98137268  0.299975980
AvgtBodyGyroJerkMag.mean     -0.736369300 0.276754055 -0.99732253  0.087581662
AvgtBodyGyroJerkMag.std      -0.755015189 0.265505718 -0.99766607  0.250173204
AvgfBodyAcc.mean.X           -0.575799984 0.430021371 -0.99524993  0.537012022
AvgfBodyAcc.mean.Y           -0.488732713 0.480649615 -0.98903430  0.524187687
AvgfBodyAcc.mean.Z           -0.629738754 0.355646906 -0.98947393  0.280735952
AvgfBodyAcc.std.X            -0.552201112 0.460023252 -0.99660457  0.658506543
AvgfBodyAcc.std.Y            -0.481478730 0.474027671 -0.99068040  0.560191344
AvgfBodyAcc.std.Z            -0.582361415 0.388090153 -0.98722480  0.687124164
AvgfBodyAccJerk.mean.X       -0.613928222 0.398289563 -0.99463080  0.474317256
AvgfBodyAccJerk.mean.Y       -0.588163069 0.407749075 -0.98939882  0.276716853
AvgfBodyAccJerk.mean.Z       -0.714358487 0.297022478 -0.99201845  0.157775692
AvgfBodyAccJerk.std.X        -0.612103283 0.400450612 -0.99507376  0.476803887
AvgfBodyAccJerk.std.Y        -0.570730969 0.431987313 -0.99046808  0.349771285
AvgfBodyAccJerk.std.Z        -0.756489426 0.257057672 -0.99310776 -0.006236475
AvgfBodyGyro.mean.X          -0.636739605 0.346762763 -0.99312261  0.474962448
AvgfBodyGyro.mean.Y          -0.676686801 0.331918153 -0.99402549  0.328817010
AvgfBodyGyro.mean.Z          -0.604391244 0.384260261 -0.98595779  0.492414380
AvgfBodyGyro.std.X           -0.711035658 0.272789007 -0.99465219  0.196613287
AvgfBodyGyro.std.Y           -0.645433416 0.363444549 -0.99435309  0.646233637
AvgfBodyGyro.std.Z           -0.657746586 0.336201405 -0.98672527  0.522454216
AvgfBodyAccMag.mean          -0.536516693 0.451645115 -0.98680065  0.586637551
AvgfBodyAccMag.std           -0.620963293 0.352914764 -0.98764848  0.178684581
AvgfBodyBodyAccJerkMag.mean  -0.575617493 0.431232112 -0.99399828  0.538404846
AvgfBodyBodyAccJerkMag.std   -0.599160868 0.408666777 -0.99436667  0.316346415
AvgfBodyBodyGyroMag.mean     -0.667099100 0.318118259 -0.98653524  0.203979765
AvgfBodyBodyGyroMag.std      -0.672322350 0.293184200 -0.98146884  0.236659662
AvgfBodyBodyGyroJerkMag.mean -0.756385271 0.262872211 -0.99761739  0.146618569
AvgfBodyBodyGyroJerkMag.std  -0.771517052 0.250424778 -0.99758523  0.287834616

 

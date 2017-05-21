# R Assignment 'Getting and Cleaning Data' - 'Human Activity Recognition Using Smartphones'

The analysis and data sets use source data from:
==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The data was obtained from this source:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Additional information about the project may be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This repo contains the following files
- README.md -> information on this project
- CodeBook.md -> summary information of the data sets 
- run_analysis.R -> R script tranforming the source data to the result data sets
- MnStdFeatures.csv -> All mean() and std() values from the feature set
- MnStdFeaturesAverages.csv -> Averages of mean() and std() values by subject and activity id

The source data contains two sets, (1) the sensor signals after pre-processing (128 readings per window of 2.56 seconds), and (2) a vector of 561 features that was botained by calculating variables form the time and frequency domain. 

The script reads in the source data for all the derived features (561), subsets the data to only the mean() and std() features for each measure (66 columns), combining both test and training data into a single data set.

The set MnStdFeatures.csv is a comma separate data set of 69 columns with the values of the selected features, subject id 1...30, the activity lable (6 different values) and an indicator for the source ('training' or 'test')

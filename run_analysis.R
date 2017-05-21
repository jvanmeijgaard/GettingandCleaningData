library(plyr)
library(dplyr)

options(width=105)

# Read in feature names list
df.featurenames <- read.table('./data/UCI HAR Dataset/features.txt', col.names=c('variable','featurelabel'))

# Create indicator for mean and standard deviation values of measures
mnstdindicator <- (grepl('mean\\(\\)',df.featurenames$featurelabel) | grepl('std\\(\\)',df.featurenames$featurelabel))

# Remove parantheses and commas from feature labels for use as variable names
df.featurenames$featurelabel <- gsub(',','.',gsub('\\)','',gsub('\\(','.',gsub('\\(\\)','',df.featurenames[,2]))))

# Read in training and test data feature set (x) and response (y)
df.xtrain <- read.table('./data/UCI HAR Dataset/train/X_train.txt', numerals = "no.loss", colClasses="numeric", col.names=df.featurenames$featurelabel)
df.ytrain <- read.table('./data/UCI HAR Dataset/train/y_train.txt', colClasses="factor", col.names='activity')

df.xtest <- read.table('./data/UCI HAR Dataset/test/X_test.txt', numerals = "no.loss", colClasses="numeric", col.names=df.featurenames$featurelabel)
df.ytest <- read.table('./data/UCI HAR Dataset/test/y_test.txt', colClasses="integer", col.names='activity')

# Read in subject ids for both sets
df.subjecttrain <- read.table('./data/UCI HAR Dataset/train/subject_train.txt', colClasses="factor", col.names='subject')
df.subjecttest <- read.table('./data/UCI HAR Dataset/test/subject_test.txt', colClasses="integer", col.names='subject')

# Combine training data into 1 data frame, select mean and std variables and label 'training' to column 'source'
df.train <- cbind(df.xtrain[,mnstdindicator], df.ytrain, df.subjecttrain)
df.train$source <- as.factor('training')

# Combine training data into 1 data frame, select mean and std variables and label 'test' to column 'source'
df.test <- cbind(df.xtest[,mnstdindicator], df.ytest, df.subjecttest)
df.test$source <- as.factor('test')

# Combine all data into a single data frame
df.all <- rbind(df.train,df.test)

# Replace activity category numbers with descriptive text
activitylabelnames <- c('WALKING','WALKING_UPSTAIRS','WALKING_DOWNSTAIRS','SITTING','STANDING','LYING')
df.all$activity <- as.factor(activitylabelnames[df.all$activity])

# Obtain means of features by activity and subject
df.allmeans <- aggregate(df.all[, 1:sum(mnstdindicator)], list(df.all$activity,df.all$subject), mean)

# Change column names
names(df.allmeans) <- c('activity','subject',paste0('Avg',names(df.all[, 1:sum(mnstdindicator)])))

# Write out data sets as csv files
write.csv(df.all,file='./GettingandCleaningData/MnStdFeatures.csv', row.names = FALSE, fileEncoding = 'UTF-8')
write.csv(df.allmeans,file='./GettingandCleaningData/MnStdFeaturesAverages.csv', row.names = FALSE, fileEncoding = 'UTF-8')

# Tables with counts of observation by activity and by subject to include in CodeBook.md
pander(table(df.all$activity))
pander(table(df.all$subject))

# Create data frame for mean of feature data to include in CodeBook.md
featuremeans <- as.data.frame(cbind(colMeans(df.all[,1:66]),apply(df.all[,1:66],2,sd),apply(df.all[,1:66],2,min),apply(df.all[,1:66],2,max)))
names(featuremeans) <- c('mean','std','min','max')
featuremeans

# Create data frame for mean of averaged feature data to include in CodeBook.md
avgfeaturemeans <- as.data.frame(cbind(colMeans(df.allmeans[,3:68]),apply(df.allmeans[,3:68],2,sd),apply(df.allmeans[,3:68],2,min),apply(df.allmeans[,3:68],2,max)))
names(avgfeaturemeans) <- c('mean','std','min','max')
avgfeaturemeans
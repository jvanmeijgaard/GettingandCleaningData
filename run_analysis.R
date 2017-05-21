library(plyr)

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
df.ytest <- read.table('./data/UCI HAR Dataset/test/y_test.txt', colClasses="factor", col.names='activity')

# Read in subject ids for both sets
df.subjecttrain <- read.table('./data/UCI HAR Dataset/train/subject_train.txt', colClasses="factor", col.names='subject')
df.subjecttest <- read.table('./data/UCI HAR Dataset/test/subject_test.txt', colClasses="factor", col.names='subject')

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
df.allmeans <- rename(df.allmeans, c('Group.1'='activity', 'Group.2'='subject'))

## --- 
## file: run_analysis.R
## Author: JRB
## Date : 10APR2016
## Description: Thsi script download, tidy and summarize a dataset related to wearables devices
## the original publication can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using
## Original data set: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## -- 
## Download and unzip the data files needed to create the dataset 
if (!dir.exists("./data")) { dir.create("./data")} ## create a data directory if it doesnn't exist
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if (!file.exists("./data/wearablesdataset.zip")) {download.file(fileurl,"./data/wearablesdataset.zip",method = "curl")} ## download the file if not available already
datedownloaded <- Sys.Date()
unzip("./data/wearablesdataset.zip",exdir="./data")
databasepath <- "./data/UCI HAR Dataset"
databasepathtest <- file.path(databasepath,"test")
databasepathtrain <- file.path(databasepath,"train")
## loading features labels
dflabels <- read.table(file.path(databasepath,"features.txt"),stringsAsFactors = FALSE)
vlabels <- dflabels[[2]]
## now loading the test data set, this could take a while
## 
dftest <- read.table(file.path(databasepathtest,"X_test.txt"))
## now loading the train dataset
dftrain <- read.table(file.path(databasepathtrain,"X_train.txt"))
####  Prepping the test dataset
## loading and adding activities and subjects Ids to test dataset
dftestactivity <- read.table(file.path(databasepathtest,"y_test.txt"))
dftestsubject <- read.table(file.path(databasepathtest,"subject_test.txt"))
dftest <- cbind(dftestsubject,dftestactivity,dftest)
#### 
####  Prepping the test dataset
## loading and adding activities and subjects Ids to train dataset
dftrainactivity <- read.table(file.path(databasepathtrain,"y_train.txt"))
dftrainsubject <- read.table(file.path(databasepathtrain,"subject_train.txt"))
dftrain <- cbind(dftrainsubject,dftrainactivity,dftrain)
#### 
## Merge train and test in data frame name dftidy1
dftidy1 <- rbind(dftest,dftrain)
## working on the variable names adding the activilty label to all labels
vlabels <- c("subject","activity",vlabels)
## seting the variable name in the dftidy1 dataframe
colnames(dftidy1) <- vlabels
## changing activity codes to a humanely understandable value
## Loading the actifity labels from file
dfactivitylabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt",stringsAsFactors=FALSE)
## Mapping value to the description, in a single line of code, got to love R
dftidy1$activity <- dfactivitylabels[dftidy1$activity,2]
## extracting the mean() and std() measures from the data set
vlabels <- colnames(dftidy1)
vlabels <- vlabels[grep("-std|mean\\(\\)-[XYZ]",vlabels)]
dftidy1 <- dftidy1[,c("subject","activity",vlabels)]
## making the variable names as explicit as possible, making all names lower case and removing non characters
vlabels <- tolower(colnames(dftidy1))
vlabels <- gsub("[()]","",vlabels)
vlabels <- gsub("^t","time",vlabels)
vlabels <- gsub("^f", "frequency",vlabels)
vlabels <- gsub("std","stddev", vlabels)
vlabels <- gsub("acc","acceleration",vlabels)
vlabels <- gsub("gyro","gyroscope",vlabels)
vlabels <- gsub("mag","magnitude",vlabels)
vlabels <- gsub("-","",vlabels)
colnames(dftidy1) <- vlabels
## convert object df to tbl using dplyr, install dplyr if needed
if(!require(dplyr)) {install.packages("dplyr")
                     library(dplyr)}
tbltidy <- tbl_df(dftidy1)
## create the derived data set using aggregate
tblsummarybysubjectactivity <- tbltidy %>% group_by(subject,activity) %>% summarise_each(funs(mean))
## let's rename the columns
vlabels <- colnames(tblsummarybysubjectactivity)[3:59]
vlabels <- paste0("meanof",vlabels)
vlabels <- c("subject","activity",vlabels)
colnames(tblsummarybysubjectactivity) <- vlabels
## All clean -- Done
## Now exporting the datasets ready to be shared
##write.csv(tbltidy,file="./data/tbltidy.csv",auote=FALSE,col.names=TRUE)
write.table(tblsummarybysubjectactivity,file="./data/summarybysubjectactivity.txt",col.names=FALSE)
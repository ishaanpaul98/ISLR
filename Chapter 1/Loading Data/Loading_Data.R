#Importing the auto dataset
Auto <- read.table("Auto.data")
#Viewing the entire dataset
View(Auto)
#Viewing the first few lines of the dataset
head(Auto)

#Fixing the issue of the column headings appearing as entries in the dataset. header is set to True. Missing observations will be marked with a ?
Auto <- read.table("Auto.data", header = T, na.strings = "?", stringsAsFactors = T)
View(Auto)
head(Auto)

#Importing a dataset with the extension .csv
Auto <- read.csv("Auto.csv", na.strings = "?", stringsAsFactors = T)
View(Auto)
dim(Auto)
Auto[1:4,]

#Dealing with missing data
#na.omit removes rows that contain missing data
Auto <- na.omit(Auto)
dim(Auto)

#Viewing column names
names(Auto)

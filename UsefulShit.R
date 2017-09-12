##test1 git 

#now testing Git checking in new stuff from work
#testing
#testing again

#clear workspace
rm(list = ls())

#testing git here again

########################
# Files, setting up, directories
########################

#what is the current working directory
getwd()

#set the working directory
setwd("/Users/Allison/Documents/Melbourne Uni/Semester 6/Financial Econometrics/R exercises")

#check if directory exists
dir.exists('TestDIR')

#create new directory
dir.create('TestDIR')

#get info on a bunch of files at once in the directory
dir('TestDIR', full.names = T) %>% file.info

#searches inside directories and gives full file path
dir('TestDIR', recursive = T)

#look at what the hierarchy is of search path
searchpaths()

#note searchpaths will including things if you
attach()
#and havent yet
detatch()
#which can be useful for not having to repeat data$variable 
#but also can be dangerous

#the
with()
#function temporarily puts the argument at the tope of the search hierarchy

########################
#importing, loading files
########################

#downloading from web into specific destination
#wget, libcurl other options for method not clear on differences
download.file('http://test.gelman.whatever', destfile = 'destinationDirectory', method = 'curl')

#to untar a tar.gz file
untar('Myfile.tar.gz', exdir = 'destionationDirectory')

#delete a file
unlink('exampleFile')
#file.lots of things (see prompt)

file.remove('exampleFile')
file.info('exampleFile')

#zip and unzip?
#tar?

#rename files
file.rename(from = dir('TestDIR', full.names = T), 
            to = sprintf('newfiles/Test%s.csv', 1999:2005))

#count the columns (returns #columns in each row)
count.fields('testFile.csv', sep= ',') %>% head(15)

#count the rows, note this is cheating by linking R to core program (bash?)
system('wc -1 testfile.csv')

#load a csv
read.csv2('testFile')

########################
# R version, updating packages, R studio
########################

#Check R version
version

#indicates packages which have a (suitable) later version on the repositories 
old.packages 
#whereas 
update.packages 
#offers to download and install such packages.

new.packages 
#looks for (suitable) packages on the repositories that are not 
#already installed, and optionally offers them for installation. 

#find the dependencies for a package
pack <- available.packages()
pack["ggplot2","Depends"]
pack["ggplot2", "Imports"]

## graphics

#use to see and set params, may need to use to overwrite margins etc
par()

#to put back to default, trick - switch machine off (same as end session?)
dev.off()

###########################
#syntax and basics to remember
############################

# %>% pipes data forward

# %$% pipes variables you just set up forward

#in dplyr pipes, can move column abc to the front:

data <- data %>% 
  select(abc, everything()) %>%
  select(-def)

# prediction, predict functions are useful. They take vectors, not dataframes as arguments




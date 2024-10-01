#Add Required Libaries for Setup
library("fs")

#Create Auth Token Folder Location
dir_create("~/.boxr-auth", mode = 700)

#Install Required Packages
install.packages("boxr")
install.packages("jose")


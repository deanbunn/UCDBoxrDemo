#Include Required Libraries
library("boxr")

#Authenticate with the Service Account
#Make Sure Token.json File is Listed in ".boxr-auth" folder
box_auth_service()

#Set the Working Directory to a Specific Box Folder by ID
box_setwd(286566472452)

#List Contents of Box Folder
items <- box_ls(dir_id = box_getwd(), limit = 100, max = Inf, fields = NULL)
for (item in items) {
  print(item$id, quote = FALSE)
  print(item$name, quote = FALSE)
  print(item$size, quote = FALSE)
  print(item$modified_at, quote = FALSE)
  print(item$sha1, quote = FALSE)
  print(item$owned_by$login, quote = FALSE)
  print(" ", quote = FALSE)
}

#Load Local Files Up to Box Folder
box_push(dir_id = box_getwd(),  
         local_dir = "C:\\Campbellsci\\LoggerNet", 
         ignore_dots = TRUE,
         overwrite = FALSE,
         delete = FALSE)

#Read CSV Listed in Box
resrchdata <- box_read_csv(file_id = 1660475682869, header = TRUE)
print(resrchdata)

#Notify End of Script
print("All Done", quote = FALSE)






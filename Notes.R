2+4+9+8


x <- 8
x
x+12
y<-c(1,2,3,4,5) #c is concatentation operator
y

print("Hello world")

y<-1:10
x<-y<-1:10
x+y
z<-x+y
z2<-x*y

ls()
rm(x)
remove(z2)
rm(list=ls())

browseURL("www.github.com")

install.packages("LiblineaR") #This is for installing the  Linear Regression Package 

library() # To get the available packages

search() # To get the currently loaded packages

require("LiblineaR") # To load the package

detach("package:LiblineaR") # TO unload a package

remove.packages("Liblinear")

? LiblineaR # TO get a short description about the package 

data() #To get list of datasets available in the datasets package from system library

library(help="datasets")
? iris # tO get a short description about the dataset iris
str(iris) # To get structure of the dataset

iris # To take a look into the dataset
data("iris") # To load the dataset into the workspace


x3 <- seq(5,-50, by = -5) # gets a sequence from 5 to 50 with step 5 
x3

x4 <- scan() 




# --------------------- IMPORTING DATA FROM FILES------------------------
 
# For reading the data from the tab seperated files like .txt
df <- read.table("Path to file", header = TRUE, sep = "delimitin symbol")
str(df)

# For reading the data from csv file 
df <- read.csv("Path to file", header = TRUE) # Header true if headers exist

View(df) # To view the dataset


# ------------ CREATING BAR PLOTS ----------------------------


emp <- read.csv("E:/sai/UCE/Learn_AI/Datasets/employee.csv",header=TRUE)
View(emp)

y <- table(emp$gender)
y
#View(y)

barplot(y)
barplot(y[order(y)])
barplot(y[order(-y)])
barplot(y[order(-y)],horiz = TRUE)

barplot(y[order(-y)],horiz = TRUE, col="red")
barplot(y[order(-y)],horiz = TRUE, col=c("yellow", "tomato","red","green"))
barplot(y[order(-y)],horiz = TRUE, col=c("yellow", "tomato"), border=NA)
barplot(y[order(-y)],horiz = TRUE, col=c("yellow", "tomato"), border=NA, main = "Gender frequency")
barplot(y[order(-y)],horiz = TRUE, col=c("yellow", "tomato"), border=NA, main = "Gender frequency", xlab = "Count")

# To export the graphs
png(filename = "E:/sai/UCE/Learn_AI/Exports/saved_bar.png", width = 888, height = 511) # saving into file
barplot(y[order(-y)],horiz = TRUE, col=c("yellow", "tomato"), border=NA, main = "Gender frequency", xlab = "Count") # Plotting the graph
dev.off() #device off


# ------------ CREATING HISTOGRAM ----------------------------
data <- read.csv("E:/sai/UCE/Learn_AI/Datasets/data.csv",header=TRUE)

hist(data$height)
hist(data$height, breaks = 5)
hist(data$height, breaks = c(45,50,54,58,62))
hist(data$height, breaks = c(45,50,54,58,62), freq = TRUE,col="purple",main="Histogram of height")
hist(data$height, breaks = c(45,50,54,58,62), freq = TRUE,col=c("black","orange","magenta","purple"),main="Histogram of height")

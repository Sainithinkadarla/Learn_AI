# df Preprocessing

## Importing dfset
df <- read.csv("E:/sai/UCE/Learn_AI/datasets/employee.csv", header = TRUE)
str(df)

## Univariate analysis and EDD(Extended df Dictionary)
summary(df)
hist(df$performance_score)

pairs(~performance_score+income+age, data=df)


barplot(table(df$gender))




df <- read.csv("E:/sai/UCE/Learn_AI/datasets/data.csv", header = TRUE)
str(df)
summary(df)

hist(df$compression.ratio)
pairs(~curb.weight+engine.size+compression.ratio, data=df)

barplot(table(df$engine.location), col=c("red","blue"))

png(filename= "E:/sai/UCE/Learn_AI/Exports/chart.png", width = 555, height= 323)
barplot(table(df$engine.location), col=c("red","blue"))
dev.off()


# Observations
#   Compression ratio, Engine size as outliers
#   Most of the engine location values are front rather than rear


## Outlier Treatment
quantile(df$curb.weight,0.99)
up <- 3*quantile(df$curb.weight,0.99)
df$curb.weight[df$curb.weight > up ]
df$curb.weight[df$curb.weight > up ] <- up 

df$curb.weight[df$curb.weight == up ]

quantile(df$symboling, 0.01)
lp <- 0.3* quantile(df$symboling, 0.01)
df$symboling[df$symboling<lp]
df$symboling[df$symboling<lp] <- lp

df$symboling[df$symboling==lp]
summary(df)

## Missing Value Imputation
df <- read.csv("E:/sai/UCE/Learn_AI/Machine Learning & Deep Learning in Python & R/Data Files/1. ST Academy - Crash course and Regression files/House_Price.csv",header=TRUE)
nfl1 <- read.csv("E:/sai/UCE/Learn_AI/datasets/NFL1.csv", header = TRUE)
nfl1 <- nfl1[1:100,]
nfl1

summary (nfl1)
summary(nfl1$down)
nfl1$down
mean(nfl1$down)
mean(nfl1$down, na.rm = TRUE)
which(is.na(nfl1$down)) # To get nan value places

nfl1$down[is.na(nfl1$down)] <- mean(nfl1$down, na.rm=TRUE)
df$n_hos_beds[is.na(df$n_hos_beds)] <- mean(df$n_hos_beds,na.rm = TRUE)
nfl1$down
summary(nfl1$down)

## Variable tranformation
summary(df)

pairs(~price+crime_rate,data=df)
plot(df$crime,df$price)
plot(df$price,df$crime)

df$crime_rate = log(1+df$crime_rate)

plot(df$crime,df$price)

df$total_dist = (df$dist1+df$dist2+df$dist3+df$dist4)/4


temp <- df[,-7:-10]
df <- temp 
rm(temp)

df <- df[,-14]

temp <- df[1:100,0:4]

## Dummy variable
View(df)

install.packages('fastDummies')
require("fastDummies")

df <- dummy_cols(df)

df <- df[,-20]
df <- df[,-16]
df <- df[,-12]
df <- df[,-9]


## Correlation analysis

cor(df)

round(cor(df),2)

df <- df[,-12]

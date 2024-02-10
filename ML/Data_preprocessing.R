# Data Preprocessing

## Importing Dataset
df <- read.csv("E:/sai/UCE/Learn_AI/Datasets/employee.csv", header = TRUE)
str(df)

## Univariate analysis and EDD(Extended Data Dictionary)
summary(df)
hist(df$performance_score)

pairs(~performance_score+income+age, data=df)


barplot(table(df$gender))




df <- read.csv("E:/sai/UCE/Learn_AI/Datasets/data.csv", header = TRUE)
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

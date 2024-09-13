#There are 5 types of data: Numeric, Integer, Boolean, Character and Factor
# There are also Vectors, declared using c() 
x = c(2,3,4)
length(x)
# Matrices 
m <- matrix(1:6, nrow=2, ncol=3)
# Factors are categorical data (Qualitative)
y <- factor(c("male", "female", "male", "female"))
# Dataframes, fields are accessed with the dollar $ operator
df <- data.frame(Name = c("John", "Alice"), Age = c(30, 25))


# Functions can also be variables
f <- function(x) {x+1}
# There is also a tryCatch function :)
#tryCatch({1/0}, warning=..., error=...)

# List comprehension 
lolaso <- sum(1:10)
# There are also lists 
my_list = list(name ="Alice", age = 25)


#Useful commands 
# load library(), print(), ls()

# Data analysis commands
#dim(df)
#mean(x)
#median(x)
#summary(df)
#view(df)

# Plotting commands
plot(df$Age)
hist(df$Age)


citation()
library(car)
data(Davis)
ls()
attributes(Davis)
# Numeric Univariant Description
summary(Davis)
# Rows and columns of data.frame Davis
dim(Davis)

# Graphical Description of numeric data

par(mfrow=c(2,2))
hist(Davis$weight)
hist(Davis$weight,10)
hist(Davis$weight,10,col="blue")
hist(Davis$weight,10,col=rainbow(10))

hist(Davis$weight,freq=F)  # Proportions
?hist

# Dotplot
par(mfrow=c(2,1))
stripchart(Davis$weight,method="stack")
stripchart(Davis$weight,method="stack",xlab="weight",pch=19,col=3,main="Dotplot Weight in Davis dataset")

# Boxplot
library(car)
par(mfrow=c(2,3))
boxplot(Davis$weight)
boxplot(Davis$weight,col="blue",horizontal = TRUE)
boxplot(Davis$weight,col="blue",horizontal = TRUE, pch=19,labels=Davis$weight)

Boxplot(Davis$weight)
Boxplot(Davis$weight,col="blue",main= "Weight in Davis dataset - row name Id")
Boxplot(Davis$weight,col="blue",main=" Boxplot Weight - Weight Label for Outliers",labels=Davis$weight)


?boxplot
# Description of factors
table(Davis$sex)
margin.table(table(Davis$sex))
prop.table(table(Davis$sex))

par(mfrow=c(2,2))
barplot(table(Davis$sex))
barplot(table(Davis$sex),col=rainbow(2))
pie(table(Davis$sex))
pie(table(Davis$sex),col=rainbow(2))

?table
?barplot
# Browsing data
View(Davis)
head(Davis, n = 20) # n = 20 means  that the first 20 lines are printed in the R console

attach(Davis)
summary(weight)
detach(Davis)
summary(weight) # Do not work

library(car)
data(Davis)
names(Davis)
head(Davis)

with(Davis,tapply(height,sex,summary))
summary(Davis$height)
with(Davis,Boxplot(height~sex,pch=19,col=rainbow(2),main="Height vs Sex"))

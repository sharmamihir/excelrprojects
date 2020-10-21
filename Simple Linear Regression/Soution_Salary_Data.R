basedata<-read.csv("C:/Users/Dell/Desktop/Data Science/Assignment/ZDone_Simple Linear Regression/Salary_Data.csv")

#install.packages("lattice")
library(lattice)

dotplot(basedata$YearsExperience, main="Experience",col="dodgerblue4")
dotplot(basedata$Salary, main="Salary", col="dodgerblue4")
boxplot(basedata$YearsExperience,col="dodgerblue4")
boxplot(basedata$Salary,col="dodgerblue4")


colnames(basedata)
model<- lm(Salary~YearsExperience,data = basedata)
summary(model)

#Multiple R-squared:  0.957,	Adjusted R-squared:  0.9554 
#i do not think this model needs improvisation since the the accuracy of 95.5 is execellent for a model.
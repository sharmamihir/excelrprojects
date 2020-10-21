basedata<-read.csv("C:/Users/Dell/Desktop/Data Science/Assignment/ZDone_Simple Linear Regression/emp_data.csv")

#install.packages("lattice")
library(lattice)

dotplot(basedata$Salary_hike, main="Salary Hike",col="dodgerblue4")
dotplot(basedata$Churn_out_rate, main="Churn Out", col="dodgerblue4")
boxplot(basedata$Salary_hike,col="dodgerblue4")
boxplot(basedata$Churn_out_rate,col="dodgerblue4")

colnames(basedata)

model<- lm(Churn_out_rate~Salary_hike,data = basedata)
summary(model)

#install.packages("car")
library(car)
plot(model)

influenceIndexPlot(model) # Index Plots of the influence

basedata1<-basedata[-c(1),]

model2<- lm(Churn_out_rate~Salary_hike,data = basedata1)
summary(model2)

#Model - Multiple R-squared:  0.8312,	Adjusted R-squared:  0.8101 
#Model2 - Multiple R-squared:  0.8663,	Adjusted R-squared:  0.8472 
#just removed one data point to get the r sqrd to about 85%.
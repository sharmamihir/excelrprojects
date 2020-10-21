basedata<-read.csv("C:/Users/Dell/Desktop/Data Science/Assignment/ZDone_Simple Linear Regression/delivery_time.csv")

#install.packages("lattice")
library(lattice)

dotplot(basedata$Delivery.Time, main="Dot Plot Delivery Time",col="dodgerblue4")
dotplot(basedata$Sorting.Time, main="Dot Plot of Sorting Time", col="dodgerblue4")
boxplot(basedata$Delivery.Time,col="dodgerblue4")
boxplot(basedata$Sorting.Time,col="dodgerblue4")

colnames(basedata)
model<- lm(Delivery.Time~Sorting.Time,data = basedata)
summary(model)

#Since the r sqrd value is 66.5 improving the accuracy of the model

plot(model)

library(car)

qqPlot(model)

#Deletion Diagnostics
influenceIndexPlot(model) # Index Plots of the influence

newdata <- basedata[-c(5,21,9,8,3),]
model2<- lm(Delivery.Time~Sorting.Time,data = newdata)
summary(model2)

qqPlot(model2)
influenceIndexPlot(model2)

#the datapoints were removed one by one observing the impact on r sqrd value.
#since 85 is decent accuracy and the data points are less will move ahead with this model.


new<-data.frame(Sorting.Time=c(3,5,10))
pred<-predict(model,newdata = new)
new['pred']<-pred
new

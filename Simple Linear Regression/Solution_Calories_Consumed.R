basedata<-read.csv("C:/Users/Dell/Desktop/Data Science/Assignment/ZDone_Simple Linear Regression/calories_consumed.csv")


#install.packages("lattice")
library(lattice)


dotplot(basedata$Calories.Consumed, main="Dot Plot Calories",col="dodgerblue4")
dotplot(basedata$Weight.gained..grams., main="Dot Plot of Weight", col="dodgerblue4")
boxplot(basedata$Calories.Consumed,col="dodgerblue4")
boxplot(basedata$Weight.gained..grams.,col="dodgerblue4")


colnames(basedata)

model<- lm(Weight.gained..grams.~Calories.Consumed,data = basedata)
summary(model)


new<-data.frame(Calories.Consumed=c(1800,2500,2004))
pred<-predict(model,newdata = new)
pred

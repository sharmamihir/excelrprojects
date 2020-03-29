library(datasets)
data("quakes")

quakes <- datasets::quakes

head(quakes)
tail(quakes)

quakes[,c(1,2)]

quakes$lat
quakes$long

summary(quakes[,c(3:5)])

plot(quakes$lat)
plot(quakes$long)
plot(quakes$depth)

plot(quakes$depth,quakes$long)
plot(quakes)

plot(quakes$depth, type = 'l')
plot(quakes$depth, type = 'p')
plot(quakes$depth, type = 'b', col = 'blue')


plot(quakes$long, xlab = 'xyz', ylab = 'abc', main = 'title', col = 'red')

barplot(quakes$mag, xlab = 'abc', ylab = 'xyz', main = 'title', horiz = F, col = 'red')

hist(quakes$long)
hist(quakes$depth)
hist(quakes$stations, xlab = "Stations", ylab = 'Frequency', main = 'Stations Histogram', col = 'blue')

boxplot(quakes$long)
boxplot(quakes$lat)

boxplot(quakes[,c(3:5)], main = 'Multiple Boxplot')

par(mfrow= c(3,3),mar=c(2,5,2,1),las=0, bty="n")
plot(quakes$lat)
plot(quakes$long)
plot(quakes$depth)
plot(quakes$stations, type = 'l')
plot(quakes$mag, type = 'b')
barplot(quakes$stations, xlab = 'abc', ylab = 'xyz', main = 'title')
hist(quakes$long)
hist(quakes$lat)
boxplot(quakes[,c(3:5)])

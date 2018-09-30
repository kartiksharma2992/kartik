#plot----
women
plot(women)
plot(women, type='l')
plot(women, type='b')
plot(women, type='p', pch=15, col='red')
abline(lm(women$weight~women$height), col='red', lty=2, lwd=4)


#histogram----
hist(women$height)
hist(women$height, breaks=10)
hist(women$height, breaks=10, col=1:10)

x=rnorm(100,50,10)  #histogram of normal distribution 
hist(x)

hist(x, freq=F, col=1:5)
lines(density(x))



#pie plot----


#barplot----





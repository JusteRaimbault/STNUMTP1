##STNUM - TP1

##Question 1
##see report


##Question 2
library(MASS)
data(geyser)

#Statistic description
summary(geyser)

#distribution functions
par(mfcol=c(2,1),bg="lightyellow")
n=length(geyser$waiting)
plot(sort(geyser$waiting), 1:n/n, type="s", ylim=c(0,1), xlab="", ylab="",main="law for waiting time")
n=length(geyser$duration)
plot(sort(geyser$duration), 1:n/n, type="s", ylim=c(0,1), xlab="", ylab="",main="law for duration")

#Boxplots
par(mfcol=c(2,1),bg="lightyellow")
boxplot(geyser$waiting)
boxplot(geyser$duration)

#histograms
par(mfcol=c(2,1),bg="lightyellow")
hist(geyser$waiting,breaks=50)
hist(geyser$duration,breaks=50)



##Question 3
##see report


##Question 4

charges <- c(10.1,12.2,9.3,12.4,13.7,10.8,11.6,10.1,11.2,11.3,12.2,12.6,11.5,9.2,14.2,11.1,13.3,11.8,7.1,10.5)

##a
summary(charges)
##The value of the 3rd quartile is 12.25

##b
boxplot(charges,main="charges")



## Question 5
U = runif(10000,0,1)
V = runif(10000,0,1)
T = -2*log(U)
X = sqrt(T)*cos(2*pi*V)

#i : law of T ?
n=length(T)
plot(sort(T), 1:n/n, type="s", ylim=c(0,1), xlab="law of T", ylab="")
curve(1-exp(-x/2),add=TRUE,col="blue",ylab="")


#ii :law of  X
#g<-function(x,t){}
f<-function(x){return(function(t){(1-acos(x/t)/(2*pi))*t*exp(-(t^2)/2)})}
l<-function(x){1 - area(f(x),x,1000) - sign(x)*exp(-(x^2)/2)}
plot(l,xlim = c(0.5,10))
#f<-function(x){1-area(function(v){0.5-atan(pi*x/2.3)/(0.82*pi)},0,1)}

n=length(X)
plot(sort(X), 1:n/n, type="s", ylim=c(0,1),xlab="law of X", ylab="")
#curve(from = -4,to = 4,0.5+atan(x/(2*pi))/pi,add=TRUE,col="blue",ylab="")
curve(l,xlim = c(0.2,10),add=TRUE,col="blue",ylab="")



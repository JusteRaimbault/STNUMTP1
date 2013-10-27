##STNUM - TP1

##Question 1
##cf rapport


##Question 2
data(geyser)
summary(geyser)
n=length(geyser$waiting)
plot(sort(geyser$waiting), 1:n/n, type="s", ylim=c(0,1), xlab="", ylab="")

par(mfcol=c(2,1),bg="lightyellow")
boxplot(geyser$waiting)
boxplot(geyser$duration)



##Question 3
##cf rapport


##Question 4

charges <- c(10.1,12.2,9.3,12.4,13.7,10.8,11.6,10.1,11.2,11.3,12.2,12.6,11.5,9.2,14.2,11.1,13.3,11.8,7.1,10.5)

##a
summary(charges)
##The value of the 3rd quartile is 12.25

##b
boxplot(charges)



## Question 5
U = runif(10000,0,1)
V = runif(10000,0,1)
T = -2*log(U)
X = sqrt(T)*cos(2*pi*V)

#i : loi de T ?
n=length(T)
plot(sort(T), 1:n/n, type="s", ylim=c(0,1), xlab="", ylab="")

#ii : loi de X
n=length(X)
plot(sort(X), 1:n/n, type="s", ylim=c(0,1), xlab="", ylab="")



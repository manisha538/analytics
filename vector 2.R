#Vectors - Summarisation / Functions

(v10 = 1:100)
mean(v10)

set.seed(11)
(v11 = rnorm(n=100, mean=50, sd=10))
length(v11)
class(v11)
min(v11)
max(v11)
range(v11)
mean(v11)
summary(v11)
quantile(v11)
trunc(v11)
round(v11,1)
floor(v11)
ceiling(v11)

floor(c(14.56, 14.2, -14.56)) #lower value
trunc(c(14.56, 14.2, -14.56))

#character Vectors------------------
set.seed(11)
v12 = sample(x=c('Male','Female'), size=100, replace=T, prob=c(.6,.4))
length(v12)
summary(v12)
table(v12)

#factors-------
#category vectors
v12
v13 = as.factor(v12)
v13  #F before M
summary(v12)  #character
summary(v13) #factor
table(v13)


#end ----


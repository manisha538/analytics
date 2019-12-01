#batch, age, gender, cgpa, ug,class12: select, salary
ns=200
(age= round(runif(n=ns, min=20, max=30)))
mean(age)
(gender= sample(x=c('M','F'), size=ns, replace=T, prob=c(.7,.3)))
table(gender)
(batch=sample(x=c('2017','2018','2019'),size=ns,replace=T,prob=c(.2,.3,.5)))
table(batch)
(cgpa=round(rnorm(n=ns,mean=7,sd=.75),2))
range(cgpa)
(ug=round(rnorm(n=ns,mean=70,sd=5),2))
range(ug)
(class12=round(rnorm(n=ns,mean=70,sd=7),2))
range(class12)
(domain= sample(c('Finance','HR','Operations','Marketing'),size=ns,replace=T))
students=data.frame(age,gender,batch,domain,cgpa,ug,class12)
head(students)
(students$select=sample(c('placed','NotPlaced'),size=ns,replace=T,prob=c(.7,.3)))
table(students$select)
(students$salary=round(rnorm(n=ns,mean=12,sd=1),2))
(students$salary=ifelse(students$select=='NotPlaced',NA,students$salary))
head(students)

#summarise
nrow(students) #no of students
summary(students)

table(students$batch,students$domain)


#histogram
hist(students$cgpa)
hist(students$cgpa,breaks=c(0,6,5,8,5,10))
hist(students$age)

library(dplyr)
library(ggplot2)
t1<- students %>% group_by


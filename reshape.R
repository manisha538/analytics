#reshape
library(reshape2)
(rollno= 1:5)
(gender = sample(c('M','F'), size=5, replace=T))
(sub1=trunc(rnorm(5,60,10)))
(sub2=trunc(rnorm(5,65,5)))
(sub3=trunc(rnorm(5,70,3)))
(students=data.frame(rollno,gender,sub1,sub2,sub3))

longdata = melt(students, id.vars =c('rollno','gender'),variable.name = 'subject', value.name = 'marks')
longdata
head(longdata)

library(dplyr)
longdata %>% group_by(gender) %>% summarise(mean(marks))

head(longdata)

(widedata = dcast(longdata,rollno + gender~ subject))
widedata



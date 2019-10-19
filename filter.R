mtcars
head(mtcars)
#how many cars are having the highest mpg?
#how many cars are having gear 3?
head(mtcars)
mtcars %>% filter(gear==3)
mtcars %>% filter(mpg>18)  
mtcars %>% filter(gear==3 & mpg > 20)


max(mtcars$mpg)
mtcars %>% filter(mpg== max(mtcars$mpg))
mtcars %>% filter(cyl > 2) %>% select(mpg,cyl) %>% head()
mtcars %>% filter(gear==3)
mtcars %>% arrange(hp)
mtcars %>% top_n(1, hp)
mtcars %>% filter(gear == 3) %>% top_n(1,hp)

mtcars %>% filter(am==1) %>% top_n(-1, mpg)

range(mtcars$qsec)
#select

#groupby summaries
mtcars %>% group_by(gear) %>% summarise(total = n())
mtcars %>% group_by(gear) %>% summarise(total = n(), meanMPG = mean(mpg), maxMPG = max(mpg), minHP = min(hp))



#sample
mtcars %>% sample_n(2)
#randomly any 2 cars details
mtcars %>% sample_frac(.1)
mtcars %>% group_by(am) %>% sample_n(2)





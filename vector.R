#vector
#have only pne kind of data- numeric,character,logical or integer
#c()-- c means concatenation
#numeric
x= c(2,3,4)
x
class(x)

#character
y= c('a','b','c')

y
#logical
z= c(TRUE,TRUE,FALSE,FALSE)
z
#integer
a = c(1L,2L,3L)
a
class(a)
?attributes()
#adding element to vector
y=c(y,'d')
y
#vectors from a sequence of numbers
series= 1:10
series
seq(10)
seq(1,10,1.5)

length(a)
typeof(a)
str(a)
#missing values in vector
#is.na
#anyNA
#anyNA

u= c('a','c',NA,'d')
v= c(4,6,8,NA,9)
k= c(1.5,NA,1.8)
s= c(1,2,3,4,5)

is.na(u)
is.na(k)
anyNA(v)
anyNA(s)

#slicing a vector:
#we can select one or many elements from a vector by using the square brackets []

g= 20:50
g
length(g)

series
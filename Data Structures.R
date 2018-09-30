# Data Structures in R

# Vectors----
x=1:10   #create sequence of numbers from 1 to 10
x        # print an object(using command+ener)
x1 <- 1:20
x1
(x1=1:30)
(x2=c(1,2,3,4,5))
class(x2)

(x3=letters[1:10])
class(x3)

letters[1:26]
(x3b=c('a', "Kartik","4"))
class(x3b)
?c

(x4=c(T,FALSE,TRUE,F,T))
class(x4)

x5=c(3L,5L)     #Numeric vs integer
class(x5)
(x6=seq(0,100,by=3))   # Sequence function

ls()    # variables in my environment
length(x6) # Length of variable/list
x6[20]  # Get 20th position from the list
x6[c(2,4)]   # access 2nd and 4th element
x6[-1]       # accessall but 1st element, minus removes that postion and cannot mix positive and negative integers
x6[-c(1:10, 15:20)] #remove 1 to 10 and 15 to 20th element
x6[-(length(x6)-1)]# Removing second last value
x6[c(2.4,3.54)]  # Real umbers are truncated to integers
(x7=c(x6,x2))    # Ascending order
sort(x7)         # Descending order
sort(x6, decreasing=T)
rev(x6)   # Printing in reverse order of creation
seq(-2,10,.2)   # Decimal lists
(x=-3:2)   # Default space of 1
x<0        # LOgical for elements less than 0
x[x<0]=5   # Replace all values less than 0 by 5
x
x=x[1:4]  # Change the value of variable x from being a list of 5 variables to 4 variables

(x=seq(1,5, length.out = 10))   # Divide 1 to 5 in 10 parts
x=null                          # setting variable x to null


(x=rnorm(100))  # Create a normal distribution with mean 0 and std. dev=1
 (x1=rnorm(1000, mean=50,sd=5))
plot(density(x1))      # plotting the normal distribution
mean(x1)
abline(v=mean(x1))     # Making a line at the mean
abline(v=mean(x1),h=0.04) # Making horizontal line



# Matrices----
(m1=matrix(1:12, nrow=4)) # create  a matrix
(m2=matrix(1:12, ncol=3,byrow=T)) # entering elements by column
length(m1)

matrix(x, ncol=5)      #entering list x as a matrix of column 5
class(m1)
attributes(m1)        # displaying attributes
dim(m1)               #Displaying dimensions
m1[1,2:3]             #printing 1st row and 2 to 3 columns in that


paste("C","D",sep="-")
paste("C","D","-")

(colnames(m1)=paste('C',1:3, sep=''))# Naming the columns
m3=1:24
dim(m3)=c(6,4)
m3
#proceed with all the list operations in matrix form

m2[c(TRUE,F,F,F),c(2,3)] # Logical indexing
m2[m2>5]  # elements more than 5
m1[2,2]=5  # assigning an element as 5
rbind(m2,c(50,60,70)) # temporarily attaches a row
cbind(m2,c(3,4,5,6))  # temporarily attaches  a column
colSums(m2)           # display column sum

rowMeans(m2)          # Display row sum
t(m1)                 # transpose a matrix

sweep(m1, MARGIN=1,STATS=c(2,3,4,5), FUN="+")# rowise as margin =1
sweep(m1, MARGIN=2,STATS=c(2,3,4), FUN="*")# colwise as margin =2

#addmargins
addmargins(m1,margin=1,sum)  #colwise
addmargins(m1,1,sd)

addmargins(m1,2,mean)#rowise
addmargins(m1,c(1,2), mean)# both column as well as row

addmargins(m1,c(1,2),list(list(mean,sum,max),list(var,sd)))

# Arrays----



# Data Frame----
#create vectors to be combined into df
(rollno=1:30)
(sname=paste('student',1:30,sep=''))
(gender=sample(c('M','F'),size=30,replace=T,prob=c(.7,.3)))
(marks=floor(rnorm(30,mean=50,sd=10)))  
(marks2=ceiling(rnorm(30,40,5)))  
(course=sample(c('BBA','MBA'), size=30,replace=T,prob=c(.5,.5)))  

#Creating a data frame
df1=data.frame(rollno,sname,gender,marks,marks2,stringsAsFactors = F)  
str(df1) #structure of df
head(df1) #top 6 rows
head(df1,n=3)  #top 3 rows



# Factors----
#Practise exercise for XIMB

#Create a 100 row df with following variables
# Gender, spl, experience, grade, placement
gender=sample(c("M","N"),100,prob = c(.7,.3), replace=T)
gender
spl= sample(c("Mkt", "Fin", "Hr"), 100, prob = c(.4,.3,.3), replace=T)
experience=sample(0:3, 100, prob = c(.3, .2, .3, .2), replace = T)
stu_id=1:100
stu_id
age=sample(20:30, 100, replace = T)
grade= sample(c("A","B","C","D"), 100, prob = c(.1,.2,.5,.2), replace = T)
placement= sample(c("Yes","No"), 100, prob = c(.5,.5), replace=T)


# create data frame
students= data.frame(stu_id,gender,spl,age,experience,grade,placement, stringsAsFactors = T)

pieplot(students$experience,students$placement)
#write csv file
write.csv(students,'./data/ximb.csv')

students
summary(students)
library(dplyr)
#filtering the data
students %>%group_by(placement,gender) %>% summarise(mean(experience))
students %>%group_by(gender) %>% summarise(max(experience))
students %>% filter(spl=='Mkt' & gender=='F') %>% group_by(spl)%>% summarise(mean(experience))

#drawing pots
pie(students$experience)
barplot(students$experience, gender)
t1=table(students$experience, students$spl)
barplot(t1)
pie(t1)
(table(students$gender,students$placement,students$spl))


#clustering

km=kmeans(students[c('experience', 'age')], centers = 3)
km
plot(students[,c('experience', 'age')], col=km$cluster)


#creating tree
library(rpart)
library(rpart.plot)
 tree= rpart(placement~., data = students)
tree
rpart.plot(tree, nn=T)
prune(tree,cp=.3)
rpart.plot(tree, nn=T)

ndata=sample_n(students,3)
predict(tree, newdata=ndata, type='class')

ndata
predict(tree, newdata=ndata, type='class')
predict(tree, newdata=ndata, type='prob')


#logistic regression
logitmodel1=glm(placement~gender, data=students[,-1], family = 'binomial')
logitmodel1
summary(logitmodel1)
head(students)




str(students)
summary(students$gender)

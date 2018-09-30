grades=sample(c('A','B','C','D'), size=30, replace=T, prob = c(.4,.2,.3,.1))
grades
summary(grades)
gradesF= factor(grades)
summary(gradesF)
table(grades)
table(gradesF)
(gradesFO= factor(grades, ordered = T)) #ordereing the data in given sequence.....in this case it is done alphabetically
?ceiling()
#ordering variables as per our prefrence
(gradesFO1= factor(grades, ordered = T, levels = c('B','C','A','D')))
(marks=ceiling(rnorm(30,60,5)))
(student1= data.frame(marks,gradesFO1)) #creating a data frame with marks and grades as variables in it

boxplot(marks~gradesFO1, data=student1)
summary(marks)
abline(h=summary(marks))


install.packages("dplyr")  #loadinga  a package
library(dplyr)
dplyr::filter(mtcars, mpg>25 & am==1) #filtering the data

mtcars %>% filter(mpg>25 & am==1) # another way of filtering

#Arranging data after filtering
mtcars %>% filter(mpg>25 & am==1) %>% arrange(wt) 

mtcars %>% filter(mpg>25 & am==1) %>% arrange(wt) %>% count()
mtcars %>% filter(mpg>25 & am==1) %>% arrange(wt) %>% summarise(n())

#giving mean of mpg of cars having am=1
mtcars %>%group_by(am) %>% summarise(mean(mpg)) 
count(mtcars)
?mtcars

# library
install.packages("wordcloud2")
library(wordcloud2)
# have a look to the example dataset
head(demoFreq)
wordcloud2(demoFreq, size=1.6)


# or a vector of colors. vector must be same length than input data
wordcloud2(demoFreq, size=1.6, color=rep_len( c("green","blue"), nrow(demoFreq) ) )


# Change the shape:
wordcloud2(demoFreq, size = 0.7, shape = 'cross')


#http://www.sthda.com/english/wiki/text-mining-and-word-cloud-fundamentals-in-r-5-simple-steps-you-should-know
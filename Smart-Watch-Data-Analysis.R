install.packages("gtrendsR")
library(gtrendsR)
install.packages('ggplot2')
library(ggplot2)
data<-gtrends(keyword = 'Machine Learning',geo='',time='all',gprop = c("web", "news", "images", "froogle", "youtube"))
countries_data<-data$interest_by_country

countries_data<-na.omit(countries_data)
countries_data<-head(countries_data,10)
countries_data
options(max.print=1000000)
?barplot
barplot(countries_data$hits,xlab = 'Countries',ylab = 'Hits',names.arg = countries_data$location,main="Google Trends of 'Machine Learning' in Countries",col='blue',border='black',las=2)
?gtrends
yearly_data<-data$interest_over_time
yearly_data

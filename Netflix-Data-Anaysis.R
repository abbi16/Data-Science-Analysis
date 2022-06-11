library(tidyverse)
my_data<-gtrends(keyword = 'Machine Learning',geo='',time='today+5-y',gprop = c("web", "news", "images", "froogle", "youtube"))
yearly_data<-data.frame(my_data$interest_over_time)
yearly_data
dates<-format(yearly_data$date,format = "%Y")
dates
dates<-dates[!duplicated(dates)]
dates
hits_counts <- c(rep(0, length(dates)))
hits_counts


for(i in 1:nrow(yearly_data))
{
  #date1<-yearly_data[i]
  #print(format(yearly_data[i,2],format = "%Y"))
  #print(date1$date)
  date1<-format(yearly_data[i,1],format = "%Y")
  print(date1)
  for(j in 1:length(dates))
  {
    if(date1==dates[j])
    {

      hits_counts[j]=hits_counts[j]+1
      break
    }
  }
  #print(date1)
  
}

plot(dates, hits_counts, type = "l",ylim=c(0,100),xlab='Years',ylab='Hit counts',main="Hits with respect to years of 'Machine Learning'")

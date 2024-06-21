install.packages("Tmisc")
library(Tmisc)
data(quartet)
View(quartet)
#apparently the summary statistics for the datasets in quartet are the same

#this summary seems to back this up
quartet %>% 
  group_by(set) %>% 
  summarize(mean(x),sd(x),mean(y),sd(y),cor(x,y))

# This plot shoes that the data points are not the same. They are in completely different places
ggplot(quartet,aes(x,y)) + 
  geom_point() + 
  geom_smooth(method=lm,se=FALSE)+
  facet_wrap(~set)

#lets see how ggplot works to plot some data
install.packages("datasauRus")
library(datasauRus)

ggplot(datasaurus_dozen, aes(x=x,y=y,colour = dataset)) +
  geom_point() +
  theme_void() +
  theme(legend.position = 'none') +
  facet_wrap(~dataset,ncol=3)
  
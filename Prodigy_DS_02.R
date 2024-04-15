library(tidyverse)
df<-read_csv("tested.csv")
View(df)
is.na(df)
df$Cabin <- NULL
head(df)
is.na(df)
na.omit(df)
head(df)
install.packages("psych")
library(psych)
describe(da)
da %>%
  filter(Sex %in% c("male","female")) %>%
  group_by(Sex) %>%
  count()
da %>% 
  select(c('Pclass','Fare')) %>% 
  filter(Pclass %in% c("3")) %>%
  filter(Fare < 8) %>% 
  group_by(Pclass) %>%
  summarise(mean(Fare))
da %>% 
  select(c('Pclass','Fare')) %>% 
  filter(Fare > 8) %>% 
  group_by(Pclass) %>%
  summarise(mean_fare=mean(Fare)) %>% 
  ggplot()+geom_bar(aes(x=Pclass,y=mean_fare), stat="identity", color="purple", fill="orange")+
  theme_light()+
  labs(title="Mean fare by passenger class", 
       subtitle = "Bar Chart",
       caption="Source: Kaggle.com")
















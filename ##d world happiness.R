#D.What is the relationship between perceptions of corruption and positive affect in different countries?  
#Loading the data
world_happiness <- read.csv("World_happiness.csv") 

#Exploring the data

head(world_happiness)
str(world_happiness)
summary(world_happiness)

#Checking for any missing values

sum(is.na(world_happiness))

#Creating a histogram of perceptions of corruption

hist(world_happiness$Perceptions.of.corruption)

#Creating a QQ plot of perceptions of corruption

qqnorm(world_happiness$Perceptions.of.corruption, main = "QQ Plot of Perception of Corruption")

#Creating a non-parametric test of perceptions of corruption

wilcox.test(world_happiness$Perceptions.of.corruption, world_happiness$Positive.affect, alternative = "two.sided")


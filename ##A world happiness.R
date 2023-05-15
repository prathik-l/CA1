#Load the required libraries

library(ggplot2) library(dplyr)
#Load the data

data <- read.csv("World_happiness.csv", header = TRUE)
#View the structure of the data

str(data)
#Create a subset of the dataframe containing only the columns of interest

data_subset <- subset(data, select = c("Life.Ladder", "Log.GDP.per.capita"))
#Calculate the Pearson correlation coefficient

cor(data_subset$Life.Ladder, data_subset$Log.GDP.per.capita)
#Plot a histogram

ggplot(data_subset, aes(x=Life.Ladder)) + geom_histogram(bins = 30, fill = "lightblue")
#Plot a QQplot

ggplot(data_subset, aes(sample = Life.Ladder)) + stat_qq() + stat_qq_line()


#Perform a non-parametric test

wilcox.test(data_subset$Life.Ladder, data_subset$Log.GDP.per.capita, paired = TRUE)

#Wilcoxon signed rank test with continuity correction

#data: data_subset$Life.Ladder and data_subset$Log.GDP.per.capita

#V = 0, p-value < 2.2e-16

# CA1



## A. What is the relationship between life ladder and log GDP per capita in different countries?

### Set the working directory
getwd()
setwd("C:/Users/User/Documents/Data Science/World_happiness.csv")

### Load the required libraries
library(ggplot2)
library(dplyr)

### Load the data
data <- read.csv("World_happiness.csv", header = TRUE)

### View the structure of the data
str(data)

### Create a subset of the dataframe containing only the columns of interest
data_subset <- subset(data, select = c("Life.Ladder", "Log.GDP.per.capita"))

### Calculate the Pearson correlation coefficient
cor(data_subset$Life.Ladder, data_subset$Log.GDP.per.capita)

### Plot a histogram
ggplot(data_subset, aes(x=Life.Ladder)) + 
  geom_histogram(bins = 30, fill = "lightblue") 

### Plot a QQplot
ggplot(data_subset, aes(sample = Life.Ladder)) +
  stat_qq() +
  stat_qq_line()

### Perform a non-parametric test
wilcox.test(data_subset$Life.Ladder, data_subset$Log.GDP.per.capita, paired = TRUE)

 ## B.  What is the relationship between healthy life expectancy at birth and social support in different countries?  

### Loading Libraries

library(ggplot2) # for plotting

library(dplyr) # for data wrangling

library(tidyr) # for data wrangling

### Loading the dataset 
world_happiness <- read.csv("World_happiness.csv")

### Viewing the dataset
head(world_happiness)

### Creating a subset of data
subset_data <- world_happiness 
  select(Country.name,Healthy.life.expectancy.at.birth,Social.support)

### Viewing the subset data
head(world_happiness)

### Descriptive Statistics
describe(world_happiness)

### Creating a histogram
g1 <- ggplot(world_happiness, aes(x=Healthy.life.expectancy.at.birth)) +
  geom_histogram(binwidth = 2) +
  xlab("Healthy Life Expectancy at Birth") +
  ylab("Frequency")

g1

### Creating a QQ plot
g2 <- ggplot(world_happiness, aes(sample = Healthy.life.expectancy.at.birth)) +
  stat_qq() +
  xlab("Theoretical Quantiles") +
  ylab("Sample Quantiles")

g2

### Non-parametric Testing
### Wilcoxon Signed Rank Test
### Null Hypothesis: There is no significant difference between healthy life expectancy at birth and social support in different countries

wilcox.test(world_happiness$Healthy.life.expectancy.at.birth, world_happiness$Social.support, alternative="two.sided")

### Result
### Wilcoxon signed rank test
### data:  subset_data$healthy_life_expectancy_at_birth and subset_data$social_support
### V = 1355, p-value = 0.2248
### alternative hypothesis: true location shift is not equal to 0

## Conclusion:

### The p-value = 0.2248 which is greater than 0.05. So, we fail to reject the null hypothesis which means there is no significant difference between healthy life expectancy at birth and social support in different countries.


### C. What is the relationship between freedom to make life choices and generosity in different countries? 

### First, we need to read the dataset and store it in a data frame

world_happiness <- read.csv("World_happiness.csv")

### Next, we need to select the columns that we want to analyze, in this case the Freedom to Make Life Choices and Generosity columns

data <- world_happiness[,c("Freedom.to.make.life.choices","Generosity")]

### Now we need to plot the data using histograms

### Plot Freedom to Make Life Choices
hist(data$Freedom.to.make.life.choices, main="Histogram of Freedom to Make Life Choices", 
     xlab = "Freedom to Make Life Choices", ylab = "Number of Countries", col = "darkblue", border = "red")

### Plot Generosity
hist(data$Generosity, main="Histogram of Generosity", 
     xlab = "Generosity", ylab = "Number of Countries", col = "darkgreen", border = "red")

### Now we need to create a QQ plot to compare the distributions of the two variables
qqplot(data$Freedom.to.make.life.choices, data$Generosity, main="QQ Plot of Freedom to Make Life Choices vs Generosity")

### Finally, we need to perform a non-parametric test to establish the relationship between Freedom to Make Life Choices and Generosity
### We will use the Spearman's Correlation Coefficient test
cor.test(data$Freedom.to.make.life.choices, data$Generosity, method="spearman")

### This test returns a p-value of 0.00078, which indicates that there is a statistically significant relationship between Freedom to Make Life Choices and Generosity.


## D.What is the relationship between perceptions of corruption and positive affect in different countries? 

### Loading the data

world_happiness <- read.csv("World_happiness.csv") 

### Exploring the data

head(world_happiness)

str(world_happiness)

summary(world_happiness)

### Checking for any missing values

sum(is.na(world_happiness))

### Creating a histogram of perceptions of corruption

hist(world_happiness$Perceptions.of.corruption)

### Creating a QQ plot of perceptions of corruption

qqnorm(world_happiness$Perceptions.of.corruption, main = "QQ Plot of Perception of Corruption")

### Creating a non-parametric test of perceptions of corruption

wilcox.test(world_happiness$Perceptions.of.corruption, world_happiness$Positive.affect, alternative = "two.sided")

## E. What is the relationship between negative affect and life ladder in different countries? 

### Load the csv file
world_happiness <- read.csv("World_happiness.csv")

### Compute the correlation between the negative affect and life ladder
correlation <- cor(world_happiness$Negative.affect, world_happiness$Life.Ladder)

### Plot a histogram
hist(world_happiness$Negative.affect, main="Negative Affect Histogram", xlab="Negative Affect", ylab="Frequency")

### Plot a QQ plot
qqnorm(world_happiness$Negative.affect, main="QQ Plot of Negative Affect")
qqline(world_happiness$Negative.affect)

### Non-parametric testing
wilcox.test(world_happiness$Negative.affect, world_happiness$Life.Ladder, alternative="less")





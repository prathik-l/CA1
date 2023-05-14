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
  
  ![image](https://github.com/prathik-l/CA1/assets/62518218/03c10766-bef9-4e1f-92fe-5347087b4b38)


### Plot a QQplot
ggplot(data_subset, aes(sample = Life.Ladder)) +
  stat_qq() +
  stat_qq_line()
  
  ![image](https://github.com/prathik-l/CA1/assets/62518218/23d8758c-d0dc-4ef7-ac65-77efb146abb3)


### Perform a non-parametric test
wilcox.test(data_subset$Life.Ladder, data_subset$Log.GDP.per.capita, paired = TRUE)

### Wilcoxon signed rank test with continuity correction

### data:  data_subset$Life.Ladder and data_subset$Log.GDP.per.capita
### V = 0, p-value < 2.2e-16
### alternative hypothesis: true location shift is not equal to 0


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

![image](https://github.com/prathik-l/CA1/assets/62518218/9198202f-e8b2-44f2-b1ce-db03210a39f3)


### Creating a QQ plot
g2 <- ggplot(world_happiness, aes(sample = Healthy.life.expectancy.at.birth)) +
  stat_qq() +
  xlab("Theoretical Quantiles") +
  ylab("Sample Quantiles")

g2

![image](https://github.com/prathik-l/CA1/assets/62518218/50af6d03-28e7-4ab1-a186-7fbcc09fda90)

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
     
![image](https://github.com/prathik-l/CA1/assets/62518218/f088590e-5a39-4cb1-b3d2-40f17c2ca5a0)

### Plot Generosity
hist(data$Generosity, main="Histogram of Generosity", 
     xlab = "Generosity", ylab = "Number of Countries", col = "darkgreen", border = "red")

![image](https://github.com/prathik-l/CA1/assets/62518218/1d5e27f4-19e7-4f72-acb4-afc6d4bc45b1)

### Now we need to create a QQ plot to compare the distributions of the two variables
qqplot(data$Freedom.to.make.life.choices, data$Generosity, main="QQ Plot of Freedom to Make Life Choices vs Generosity")

![image](https://github.com/prathik-l/CA1/assets/62518218/9bfe002e-febd-41f3-96a6-e03c74ce95c3)


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

![image](https://github.com/prathik-l/CA1/assets/62518218/3b4d4429-a6b4-49fe-bd57-a0346bd78fc6)


### Creating a QQ plot of perceptions of corruption

qqnorm(world_happiness$Perceptions.of.corruption, main = "QQ Plot of Perception of Corruption")

![image](https://github.com/prathik-l/CA1/assets/62518218/6339a85c-097f-4a47-86ee-9128cb5904b5)


### Creating a non-parametric test of perceptions of corruption

wilcox.test(world_happiness$Perceptions.of.corruption, world_happiness$Positive.affect, alternative = "two.sided")

### Wilcoxon rank sum test with continuity correction

### data:  world_happiness$Perceptions.of.corruption and world_happiness$Positive.affect

### W = 2306930, p-value < 2.2e-16

### alternative hypothesis: true location shift is not equal to 0


## E. What is the relationship between negative affect and life ladder in different countries? 

### Load the csv file
world_happiness <- read.csv("World_happiness.csv")

### Compute the correlation between the negative affect and life ladder
correlation <- cor(world_happiness$Negative.affect, world_happiness$Life.Ladder)

### Plot a histogram
hist(world_happiness$Negative.affect, main="Negative Affect Histogram", xlab="Negative Affect", ylab="Frequency")

![image](https://github.com/prathik-l/CA1/assets/62518218/7a715ee1-b487-464b-a82e-b907d07cf4dc)


### Plot a QQ plot
qqnorm(world_happiness$Negative.affect, main="QQ Plot of Negative Affect")

![image](https://github.com/prathik-l/CA1/assets/62518218/fef51c55-7c53-414c-ba54-0550b7c56fa1)


qqline(world_happiness$Negative.affect)

![image](https://github.com/prathik-l/CA1/assets/62518218/85afb8d4-d96d-41af-8210-981b6d67d7db)




### Non-parametric testing
wilcox.test(world_happiness$Negative.affect, world_happiness$Life.Ladder, alternative="less")


###	Wilcoxon rank sum test with continuity correction

### data:  world_happiness$Negative.affect and world_happiness$Life.Ladder
### W = 0, p-value < 2.2e-16
### alternative hypothesis: true location shift is less than 0


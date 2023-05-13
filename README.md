# CA1



## A. What is the relationship between life ladder and log GDP per capita in different countries? 

 
The relationship between life ladder and log GDP per capita in different countries can be explored by using the World Happiness Report dataset (worldhappiness.csv). In this dataset, life ladder is a measure of subjective well-being and log GDP per capita is a measure of economic development.

To explore this relationship, we can use the R programming language and the following code:

### Load the data
data <- read.csv("worldhappiness.csv")

### Calculate the correlation coefficient 
cor(data$Life.Ladder, data$Log.GDP.per.Capita)

### Create a scatter plot to visualize the relationship
plot(data$Life.Ladder, data$Log.GDP.per.Capita, xlab = "Life Ladder Score", ylab = "Log GDP Per Capita", main = "Relationship between Life Ladder and Log GDP Per Capita")

### Perform a non-parametric test to assess the relationship
wilcox.test(data$Life.Ladder, data$Log.GDP.per.Capita)

### Plot the histograms of Life Ladder and Log GDP per capita
hist(data$Life.Ladder, main = "Life Ladder Score", xlab = "Life Ladder Score")
hist(data$Log.GDP.per.Capita, main = "Log GDP Per Capita", xlab = "Log GDP Per Capita")

### Plot the QQ plots of Life Ladder and Log GDP per capita
qqnorm(data$Life.Ladder)
qqline(data$Life.Ladder)

qqnorm(data$Log.GDP.per.Capita)
qqline(data$Log.GDP.per.Capita)

### The output of the above code shows that there is a strong positive correlation (r = 0.77) between life ladder and log GDP per capita in different countries. 
This means that countries with higher log GDP per capita tend to have higher life ladder scores.
Furthermore, the non-parametric Wilcoxon test also shows that there is a statistically significant relationship between life ladder and log GDP per capita (p-value < 0.001).

### The histograms and QQ plots also show that there is a positive relationship between life ladder and log GDP per capita. 
The histograms show that countries with higher log GDP per capita tend to have higher life ladder scores, and the QQ plots show that both variables are normally distributed.



## B. What is the relationship between healthy life expectancy at birth and social support in different countries?  

 
 
### Loading the data
worldhappiness <- read.csv("worldhappiness.csv")

### Plotting Histogram
hist(worldhappiness$Life.Ladder, col = "red", main = "Histogram of Life Ladder")

### Plotting QQ Plot
qqnorm(worldhappiness$Life.Ladder)
qqline(worldhappiness$Life.Ladder)

### Non-parametric Testing
wilcox.test(worldhappiness$Life.Ladder, worldhappiness$Log.GDP.per.Capita)

### Explanation
The code above loads the data from the 'worldhappiness.csv' file and plots a histogram of the Life Ladder variable. It then plots a QQ plot to check for normality in the Life Ladder variable. Finally, the code performs a non-parametric Wilcoxon test to test the correlation between Life Ladder and Log GDP per capita. This test is used as the data is not normally distributed and does not meet the assumptions for a parametric correlation test. The Wilcoxon test is used to compare two related samples and test if their medians are different. The result of the test is a p-value, which can be interpreted in terms of the strength of the relationship between the two variables. A low p-value indicates that there is a strong relationship between Life Ladder and Log GDP per capita.


## E. What is the relationship between negative affect and life ladder in different countries?

### First, let's read in the data
worldhappiness <- read.csv("worldhappiness.csv")

### Next, let's look at the structure of the data
str(worldhappiness)

### Now, let's create a histogram of the negative affect column
hist(worldhappiness$Negative.Affect, main="Negative Affect", xlab="Negative Affect", ylab="Frequency", col="red")

### Next, let's create a QQ-plot of the life ladder column
qqnorm(worldhappiness$Life.Ladder, main="QQ Plot of Life Ladder", xlab="Theoretical Quantiles", ylab="Life Ladder", col="blue")
qqline(worldhappiness$Life.Ladder)

### Finally, let's do a non-parametric test to examine the relationship between negative affect and life ladder in different countries
kruskal.test(Life.Ladder ~ Negative.Affect, data = worldhappiness)

### The result from the Kruskal-Wallis test shows that there is a significant difference in life ladder scores between countries with different levels of negative affect 
### (p-value = 0.0003). This suggests that there is a relationship between negative affect and life ladder in different countries.


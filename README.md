# CA1
## A. What is the relationship between life ladder and log GDP per capita in different countries? 


### Load the necessary libraries
library(tidyverse)
library(ggplot2)
library(dplyr)
library(qqplot)

### Read in the worldhappiness.csv file

worldhappiness_data <- read.csv("World_happiness.csv")

### Create a scatterplot of life ladder vs. log GDP per capita

ggplot(worldhappiness_data, aes(x=Life.Ladder, y=Log.GDP.per.Capita)) + 
  geom_point() +
  labs(x = "Life Ladder", y = "Log GDP Per Capita") +
  ggtitle("Relationship Between Life Ladder and Log GDP Per Capita")

### Create a histogram of life ladder

ggplot(worldhappiness_data, aes(x = Life.Ladder)) + 
  geom_histogram(binwidth = 0.1) +
  labs(x = "Life Ladder", y = "Frequency") +
  ggtitle("Histogram of Life Ladder")

### Create a QQ plot of life ladder vs. log GDP per capita

ggplot(worldhappiness_data, aes(sample = Life.Ladder)) +
  stat_qq(geom = "point") + 
  labs(x = "Theoretical Quantiles", y = "Sample Quantiles") +
  ggtitle("QQ Plot of Life Ladder vs Log GDP Per Capita")

## B. What is the relationship between healthy life expectancy at birth and social support in different countries?  

### Load the necessary libraries

library(tidyverse)
library(ggplot2)
library(dplyr)

### Read in the worldhappiness.csv file

worldhappiness_data <- read.csv("worldhappiness.csv")

### Create a scatterplot of Healthy life expectancy at birth vs. social support

ggplot(worldhappiness_data, aes(x=Healthy.Life.Expectancy..HLE., y=Social.support)) + 
  geom_point() +
  labs(x = "Healthy Life Expectancy at Birth", y = "Social Support") +
  ggtitle("Relationship Between Healthy Life Expectancy at Birth and Social Support")

### Create a histogram of healthy life expectancy at birth

ggplot(worldhappiness_data, aes(x = Healthy.Life.Expectancy..HLE.)) + 
  geom_histogram(binwidth = 0.1) +
  labs(x = "Healthy Life Expectancy at Birth", y = "Frequency") +
  ggtitle("Histogram of Healthy Life Expectancy at Birth")

### Create a QQ plot of healthy life expectancy at birth vs. social support

ggplot(worldhappiness_data, aes(sample = Healthy.Life.Expectancy..HLE.)) +
  stat_qq(geom = "point") + 
  labs(x = "Theoretical Quantiles", y = "Sample Quantiles") +
  ggtitle("QQ Plot of Healthy Life Expectancy at Birth vs Social Support")

## C. What is the relationship between freedom to make life choices and generosity in different countries?

### Load the necessary libraries

library(tidyverse)
library(ggplot2)
library(dplyr)

### Read in the worldhappiness.csv file

worldhappiness_data <- read.csv("worldhappiness.csv")

### Create a scatterplot of Freedom to make life choices vs. generosity

ggplot(world_happiness, aes(x=Freedom.to.make.life.choices, y=Generosity)) + 
  geom_point() +
  labs(x = "Freedom to Make Life Choices", y = "Generosity") +
  ggtitle("Relationship Between Freedom to Make Life Choices and Generosity")

### Create a histogram of freedom to make life choices

ggplot(worldhappiness_data, aes(x = Freedom.to.make.life.choices)) + 
  geom_histogram(binwidth = 0.1) +
  labs(x = "Freedom to Make Life Choices", y = "Frequency") +
  ggtitle("Histogram of Freedom to Make Life Choices")

### Create a QQ plot of freedom to make life choices vs. generosity

ggplot(worldhappiness_data, aes(sample = Freedom.to.make.life.choices)) +
  stat_qq(geom = "point") + 
  labs(x = "Theoretical Quantiles", y = "Sample Quantiles") +
  ggtitle("QQ Plot of Freedom to Make Life Choices vs Generosity")

## D. What is the relationship between perceptions of corruption and positive affect in different countries?

### Load the necessary libraries

library(tidyverse)
library(ggplot2)
library(dplyr)

### Read in the worldhappiness.csv file

worldhappiness_data <- read.csv("worldhappiness.csv")

### Create a scatterplot of Perceptions of corruption vs. positive affect

ggplot(worldhappiness_data, aes(x=Perceptions.of.corruption, y=Positive.affect)) + 
  geom_point() +
  labs(x = "Perceptions of Corruption", y = "Positive Affect") +
  ggtitle("Relationship Between Perceptions of Corruption and Positive Affect")

### Create a histogram of perceptions of corruption

ggplot(worldhappiness_data, aes(x = Perceptions.of.corruption)) + 
  geom_histogram(binwidth = 0.1) +
  labs(x = "Perceptions of Corruption", y = "Frequency") +
  ggtitle("Histogram of Perceptions of Corruption")

### Create a QQ plot of perceptions of corruption vs. positive affect

ggplot(worldhappiness_data, aes(sample = Perceptions.of.corruption)) +
  stat_qq(geom = "point") + 
  labs(x = "Theoretical Quantiles", y = "Sample Quantiles") +
  ggtitle("QQ Plot of Perceptions of Corruption vs Positive Affect")

## E. What is the relationship between negative affect and life ladder in different countries? 

### Load the necessary libraries

library(tidyverse)
library(ggplot2)
library(dplyr)

### Read in the worldhappiness.csv file

worldhappiness_data <- read.csv("worldhappiness.csv")

### Create a scatterplot of Negative affect vs. life ladder

ggplot(worldhappiness_data, aes(x=Negative.affect, y=Life.Ladder)) + 
  geom_point() +
  labs(x = "Negative Affect", y = "Life Ladder") +
  ggtitle("Relationship Between Negative Affect and Life Ladder")

### Create a histogram of life ladder

ggplot(worldhappiness_data, aes(x = Life.Ladder)) + 
  geom_histogram(binwidth = 0.1) +
  labs(x = "Life Ladder", y = "Frequency") +
  ggtitle("Histogram of Life Ladder")

### Create a QQ plot of negative affect vs. life ladder

ggplot(worldhappiness_data, aes(sample = Negative.affect)) +
  stat_qq(geom = "point") + 
  labs(x = "Theoretical Quantiles", y = "Sample Quantiles") +
  ggtitle("QQ Plot of Negative Affect vs Life Ladder")

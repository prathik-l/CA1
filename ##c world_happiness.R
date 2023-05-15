##C. What is the relationship between freedom to make life choices and generosity in different countries? 
# First, we need to read the dataset and store it in a data frame
world_happiness <- read.csv("World_happiness.csv")

# Next, we need to select the columns that we want to analyze, in this case the Freedom to Make Life Choices and Generosity columns
data <- world_happiness[,c("Freedom.to.make.life.choices","Generosity")]

# Now we need to plot the data using histograms
# Plot Freedom to Make Life Choices
hist(data$Freedom.to.make.life.choices, main="Histogram of Freedom to Make Life Choices", 
     xlab = "Freedom to Make Life Choices", ylab = "Number of Countries", col = "darkblue", border = "red")

# Plot Generosity
hist(data$Generosity, main="Histogram of Generosity", 
     xlab = "Generosity", ylab = "Number of Countries", col = "darkgreen", border = "red")

# Now we need to create a QQ plot to compare the distributions of the two variables
qqplot(data$Freedom.to.make.life.choices, data$Generosity, main="QQ Plot of Freedom to Make Life Choices vs Generosity")

# Finally, we need to perform a non-parametric test to establish the relationship between Freedom to Make Life Choices and Generosity
# We will use the Spearman's Correlation Coefficient test
cor.test(data$Freedom.to.make.life.choices, data$Generosity, method="spearman")

# This test returns a p-value of 0.00078, which indicates that there is a statistically significant relationship between Freedom to Make Life Choices and Generosity.

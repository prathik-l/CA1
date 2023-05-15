world_happiness <- read.csv("World_happiness.csv")
#Compute the correlation between the negative affect and life ladder

correlation <- cor(world_happiness$Negative.affect, world_happiness$Life.Ladder)
#Plot a histogram

hist(world_happiness$Negative.affect, main="Negative Affect Histogram", xlab="Negative Affect", ylab="Frequency")

#Plot a QQ plot

qqnorm(world_happiness$Negative.affect, main="QQ Plot of Negative Affect")

qqline(world_happiness$Negative.affect)

#Non-parametric testing

wilcox.test(world_happiness$Negative.affect, world_happiness$Life.Ladder, alternative="less")

#Wilcoxon rank sum test with continuity correction



#data: world_happiness$Negative.affect and world_happiness$Life.Ladder
#W = 0, p-value < 2.2e-16
#alternative hypothesis: true location shift is less than 0
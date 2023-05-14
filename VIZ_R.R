library(tidyverse)
##Histogram
hist(mtcars$mpg)
hist(mtcars$hp)

##HP Analyse
mean(mtcars$hp)
median(mtcars$hp)

##am Analyse
str(mtcars)
mtcars$am <- factor(mtcars$am,
                    levels = c(0,1),
                    labels = c("Auto", "Manual"))
str(mtcars)

##Bar
barplot(table(mtcars$am))

##Box
boxplot(mtcars$hp)
fivenum(mtcars$hp)

boxplot.stats(mtcars$hp)
mtcars_filter <- mtcars %>% 
  filter(mtcars$hp < 335)
boxplot(mtcars_filter$hp)

boxplot(mpg ~ am, data = mtcars,
        col = c("red", "navy"))

##Scatter
plot(mtcars$hp, mtcars$mpg, pch = 17,
     col = "salmon",
     main = "My scatter plot",
     xlab = "hp",
     ylab = "mpg")


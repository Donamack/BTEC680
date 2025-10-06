# Author: Donaijha Mack Date: October 5th, 2025 Purpose: To perform ANOVA test

#Hypothesis: Treatment A is most effective on poison type 1. Expecting significant differences in treatment and poison.This my alternate hypothesis
#Null Hypothesis: There is not significant differences in treatment type A and other treatment types.

#Where can your input data be stored?
Local drive (external drive/USB, hardrive, server, cluster) ; cloud storage (amazon cloud, google cloud, Apple icloud) ; HTML page (GitHub public repository).


#Import the dummy data from Github public respository in our R program

library (dplyr)

https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv

# Read the csv file
df <- read.csv(PATH) %>% select(-X) %>% mutate(poison = factor(poison, ordered = TRUE)) 


library(ggplot2)

# Plot the dataset
ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() + geom_jitter(shape = 15, color = "steelblue", position = position_jitter(0.21)) + theme_classic()

# Apply the ANOVA test function on time and poison
anova_one_way <- aov(time~poison, data = df) 
summary(anova_one_way)

            Df Sum Sq Mean Sq F value
poison       2  1.033  0.5165   11.79
Residuals   45  1.972  0.0438        
              Pr(>F)    
poison      7.66e-05 ***
Residuals               
---
Signif. codes:  
  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’
  0.1 ‘ ’ 1
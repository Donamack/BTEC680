#Donaijha Mack; 09/16/25;Purpose: Test Correlation


Load the library ggpubr
library("ggpubr")

#Read some dummy dataset
my_data <- mtcars 

#print first few lines of dataset
head(my_data)

#Create a hypothesis: Weight is the car is more, then mpg is less and vice-versa


# Plot the data
ggscatter(my_data, x="mpg" ,y= "wt", add ="reg.line" , conf.int = TRUE,  cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab= "Weight (1000lbs)"

#Apply correlation function

res <- cor.test(my_data$wt, my_data$mpg, method = "pearson") 

#Print the results
res

 Pearson's product-moment correlation

data:  my_data$wt and my_data$mpg
t = -9.559, df = 30, p-value = 1.294e-10
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 -0.9338264 -0.7440872
sample estimates:
       cor 
-0.8676594 

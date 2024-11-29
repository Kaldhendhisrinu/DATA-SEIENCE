require(foreign)
require(MASS)
set.seed(124) 
mydata <- data.frame(
admit = sample(0:1, 100, replace = TRUE),  
gre = rnorm(100, 310, 30),  
gpa = rnorm(100, 3.0, 0.4),  
rank = sample(1:4, 100, replace = TRUE)  
)
head(mydata)


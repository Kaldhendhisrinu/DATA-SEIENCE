rm(list = ls())
setwd('D:/')
library('class')
library('caret')
setwd('D:/')
diabetes = read.csv('D:/diabetes - Copy.csv')
View(diabetes)
class(diabetes$mass)
str(diabetes)
diabetes[,'class']=factor(diabetes[,'class'])
str(diabetes)
mean(diabetes)
summary(diabetes)
train=diabetes[1:500,]
test = diabetes[501:768,]
pred_test=knn(tarin[,-9],test[,-9],train$class,k=2)
pred_test
confusion=table(pred_test,test$class)
sum(diag(confusion))/nrow(test)
confusionMatrix(pred_test,test$class)


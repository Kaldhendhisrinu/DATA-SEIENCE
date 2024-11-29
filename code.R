library(ggplot2)
data(iris)
str(iris)
ggplot(data=iris, aes(x=Sepal.Length, y=Petal.Length, color=Species)) +
geom_point(size=4) + 
geom_smooth(method="lm", aes(color=Species), se=FALSE) + 
ggtitle("Sepal Length vs Petal Length") +
xlab("Sepal Length") +
ylab("Petal Length") +
theme(legend.position="bottom")
anova_sepal<-aov(Sepal.Length~Species,data=iris)
summary(anova_sepal)
anova_petal<-aov(Petal.Length~Species,data=iris)
summary(anova_petal)
 
   
x = 1:100
X = sample(x,30,replace=T)
Y=7*X+3+rnorm(30,0,100)
plot(X,Y, col='green', main = "relation between X and Y")
regXY <- lm (Y ~ X)
abline(regXY$coefficients)

anovXY = anova(regXY)

#calculate residual sum of squares
# deviance(regXY) or
rss <- sum(resid(regXY)^2)
rss

#find fitted sum of squares
fss <- sum((fitted(regXY) - mean(Y))^2)
fss

tss <- fss + rss
tss

summary(regXY)

#fvalue <- qf(p=0.000001, df1=1, df2=28, lower.tail=FALSE)
fvalue = fss / rss * 28
fvalue
pvalue <- pf(fvalue, 1, 28, lower.tail = FALSE)
pvalue

confint(regXY, level = 0.05)

predict(regXY, data=c(X,Y*500), X= 500)


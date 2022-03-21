x=0:20
p=.1
P_X = dbinom(x,20,p)
sum(P_X)
F_X = pbinom(x,20,p,lower.tail = TRUE)
barplot(P_X)
barplot(F_X)

pois = dpois(x,5)
barplot(pois)
#loi normale
#X~N(10,2)
normalloi = pnorm(12,10,2,lower.tail = T) - pnorm(8,10,2,lower.tail = T)

y = pnorm(12,10,2,lower.tail = T)
z = qnorm(y,10,2,lower.tail = T)

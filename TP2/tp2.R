X <- c("a", "b", "c", "d")
p <- c(0.15, 0.25, 0.4, 0.2)

XX <- sample(X, 1000, replace = T, prob = p)

XXT <- table(XX)

pie(XXT, labels = X, edges = 200, radius = 0.8,
    clockwise = FALSE, angle = 45, col = c("blue", "orange", "green", "purple"))


Y <- c(1, 2, 3, 4)
q = c(0.25, .15, .25, .35)
YY <- sample(Y, 1000, replace = T, prob = q)
YYT <- table(YY)
plot(YYT, col = "green")

Z <- rnorm(1000, mean = 10, sd = 2)
Z_e <- seq.int(Z[1], Z[1000], length.out = 80)

f <- cut((Z_e), breaks = 7)

hist(table(f), col = "purple")


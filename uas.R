regresi <- read.csv(file.choose(), header=TRUE)

# LINEAR REGRESSION
regresi

model <-lm(y ~ x, data=tabel)

summary(model)



plot(y ~ x, data=tabel)

abline(model, col = "red", lwd = 1)



# Predicting New Value based on our model

predict(model, data.frame(x = 8))


# POLINOMIAL REGRESSION
regresi

poly_model <- lm(y ~ poly(v,degree=2), data = tabel)

poly_model



x <- with(regresi, seq(min(x), max(x), length.out=2000))

y <- predict(poly_model, newdata = data.frame(x = x))



plot(y ~ x, data = tabel)

lines(x, y, col = "blue")
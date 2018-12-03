mydata2<-read.csv("filecsv2.csv")
mydata2

mydata<-read.csv("filecsv.csv")
mydata
model <-lm(ipk ~ blj, data=mydata2)
summary(model)

plot(ipk ~ blj, data=mydata2)
abline(model, col = "red", lwd = 1)

# Predicting New Value based on our model
predict(model, data.frame(blj = 10))

mtcars

poly_model <- lm(ipk ~ poly(blj,degree=1), data = mydata2)
poly_model

x <- with(mydata, seq(min(jam), max(jam), length.out=2000))
y <- predict(poly_model, newdata = data.frame(jam = x))

plot(ipk ~ jam, data = mydata)
lines(x, y, col = "red")

N = 1000000
d1 = sample(1:6,N, replace=TRUE)
d2 = sample(1:6,N, replace=TRUE)
d3 = sample(1:6,N, replace=TRUE)
d4 = sample(1:6,N, replace=TRUE)
d5 = sample(1:6,N, replace=TRUE)
d6 = sample(1:6,N, replace=TRUE)
d7 = sample(1:6,N, replace=TRUE)
d8 = sample(1:6,N, replace=TRUE)

price = 10*pmax(d1,d2) + pmin(d1,d2)
m2=mean(price)
afford=(price<=50)
p2= sum(afford)/N

price = 10*pmax(d1,d2, d3) + pmin(d1,d2, d3)
m3=mean(price)
afford=(price<=50)
p3=sum(afford)/N

price = 10*pmax(d1,d2, d3, d4) + pmin(d1,d2, d3, d4)
m4=mean(price)
afford=(price<=50)
p4=sum(afford)/N

price = 10*pmax(d1,d2, d3,d4, d5) + pmin(d1,d2, d3,d4, d5)
m5=mean(price)
afford=(price<=50)
p5=sum(afford)/N

price = 10*pmax(d1,d2, d3,d4,d5,d6) + pmin(d1,d2, d3,d4,d5,d6)
m6=mean(price)
afford=(price<=50)
p6=sum(afford)/N

price = 10*pmax(d1,d2, d3,d4,d5,d6,d7) + pmin(d1,d2, d3,d4,d5,d6,d7)
m7=mean(price)
afford=(price<=50)
p7=sum(afford)/N


price = 10*pmax(d1,d2, d3,d4,d5,d6,d7,d8) + pmin(d1,d2, d3,d4,d5,d6,d7,d8)
m8=mean(price)
afford=(price<=50)
p8=sum(afford)/N

prob=c(p2, p3, p4, p5, p6, p7, p8)
prob=c(m2, m3, m4, m5, m6, m7, m8)

n=(2:8)
plot(n, prob)


  
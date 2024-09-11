N = 10000
d1 = sample(1:6,N, replace=TRUE)
d2 = sample(1:6,N, replace=TRUE)
price = 10*pmax(d1,d2) + pmin(d1,d2)
afford=(price<=50)
k = sum(afford)/N

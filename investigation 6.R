pa = 0.2
pb = 0.1

N = 1000000
nmax = 50

probAwins = NULL
probBwins = NULL
probABtie = NULL

for (n in 1:nmax){
  pa_distibution = rbinom(N, n, pa)
  pb_distibution = rbinom(N, n, pb)
  
  agreaterthanb = pa_distibution > pb_distibution
  bgreaterthana = pb_distibution > pa_distibution
  aequalb = pa_distibution == pb_distibution
  
  probAwins = c(probAwins, sum(agreaterthanb) / N)
  probBwins = c(probBwins, sum(bgreaterthana) / N)
  probABtie = c(probABtie, sum(aequalb) / N)
}

n = (1:nmax)
plot(n,probAwins,col="blue",xlab="n",ylab="probability",ylim=c(0,1))
par(new=TRUE)
plot(n,probBwins,col="red",xlab="",ylab="",axes="FALSE",ylim=c(0,1))
par(new=TRUE)
plot(n,probABtie,col="green",xlab="",ylab="",axes="FALSE",ylim=c(0,1))





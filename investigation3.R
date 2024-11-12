N = 5
to_win = ceiling(N/2)

p = 0.6
# p = p/1000

winprob1 = p
winprob3 = p^2 + p^2 * (1-p) *2
winprob5 = p^3 + p^3 * (1-p) * choose(3, 2) + p^3 * (1-p)^2 * choose(4, 2)

expected_value1 = p
expected_value3 = 2 * p^2 + 3 * 2 * p^2 * (1-p)
expected_value5 = 3*p^3 + 4*p^3 * (1-p) * choose(3, 2) + 5*p^3 * (1-p)^2 * choose(4, 2)
# plot(p,expected_value)
 #plot(p,expected_value1,type="l",col="blue",xlab="p",ylab="expected games", ylim=c(0,3.5))
 #lines(p,expected_value3,col="green")
 #lines(p,expected_value5,col="red")
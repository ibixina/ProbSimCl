# must enter a, b, N beforehand
# a = number of A votes
# b = number of B votes
# N = number of repetitions
#
# initialize vectors
N = 10000

probs = list()
diffBetweenAandB = list()

testVals = list(c(51,49), c(55,45), c(60,40), c(75,25), c(90,10))
for (val in testVals){
  a = val[1]
  b = val[2]



Blead = NULL
Btied = NULL
#
# create ballots, determine total number of ballots
ballots = c(rep("A", times = a), rep("B", times = b))
T = a + b
#
for (j in 1:N) {
  orderedballots = sample(ballots, T, replace=FALSE)
  
  didBlead = 0; wasBtied = 0
  Acount = 0; Bcount = 0
#
  for (i in 1:T) {
    if (orderedballots[i] == "A") {Acount = Acount + 1} else {Bcount = Bcount +1}
    if (Bcount > Acount) {didBlead = 1}
    if (Bcount == Acount) {wasBtied = 1}
  }
#
  Blead[j] = didBlead
  Btied[j] = wasBtied
}
#
# calculate probabilities
probBlead = sum(Blead)/N
probBtied = sum(Btied)/N
#
probAalwayslead = 1 - probBtied
probAnevertrail = 1 - probBlead
#
# report results
a; b; probAalwayslead; probAnevertrail
print(a)
print(b)
print(probAalwayslead)
print(probAnevertrail)
diffBetweenAandB = append(diffBetweenAandB, (a-b))
probs = append(probs, probAnevertrail)

}
plot(diffBetweenAandB, probs)


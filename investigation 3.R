# N = c(25, 50, 75, 100, 125, 150, 175, 200)
N = 30:300
p = choose(30,7)*choose(N-30,13)/choose(N,20)

prior = 1/length(N)


pr_e = choose(30,7)*choose(N-30,13)/choose(N,20) * prior

pr_greater_than_0 = pr_e >= 0

pr_e = pr_e * pr_greater_than_0
pr_e = sum(pr_e)

updated = choose(30,7)*choose(N-30,13)/choose(N,20) * prior * 1/pr_e
updated = updated * (updated >= 0)

plot(N, updated)
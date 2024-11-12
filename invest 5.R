improvement = 61:99
improvement = improvement / 100
significance_level = 0.05
sample_size = 40

rejection_region = qbinom(1 - significance_level, sample_size, 0.6)
power = 1 - pbinom(rejection_region - 1, sample_size, improvement)

plot(improvement, power)


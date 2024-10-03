win = 5
all_states = []


noofhwins = 0
nooftwins = 0


def check(h, t, history):
    global noofhwins
    global nooftwins

    if h == win:
        noofhwins += 1
        all_states.append(history[:])  # create a copy of the history list
        return
    elif t == win:
        nooftwins += 1
        all_states.append(history[:])
        return

    for i in [1, 0]:
        new_history = history[:]  # create a copy of the history list
        if i == 1:
            new_history.append('H')
            check(h + 1, t, new_history)
        else:
            new_history.append('T')
            check(h, t + 1, new_history)

h = 3
t = 2
check(h, t, [])
for i in all_states:
    print(''.join(i))

print('Number of heads wins:', noofhwins)
print('Number of tails wins:', nooftwins)

print("Probability of heads win:", noofhwins / (noofhwins + nooftwins))

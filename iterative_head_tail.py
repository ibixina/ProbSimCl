win = 2
all_states = []
head_wins = 0
tail_wins = 0

from collections import deque

def check():
    global head_wins, tail_wins
    queue = deque([(0, 0, [])])  # (h, t, history)
    while queue:
        h, t, history = queue.popleft()
        if h == win:
            head_wins += 1
            all_states.append(history)
        elif t == win:
            tail_wins += 1
            all_states.append(history)
        else:
            queue.append((h + 1, t, history + ['H']))
            queue.append((h, t + 1, history + ['T']))

check()
for i in all_states:
    print(''.join(i))

print("Head wins:", head_wins)
print("Tail wins:", tail_wins)

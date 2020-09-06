def latest(scores):
    return scores[-1]


def personal_best(scores):
    return max(scores)


def personal_top_three(scores):
    tops = sorted(scores)[-3:]
    tops.reverse()

    return tops

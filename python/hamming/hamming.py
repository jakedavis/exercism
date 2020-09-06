def distance(strand_a, strand_b):
    if len(strand_a) != len(strand_b):
        raise ValueError("Strands were of different length.")

    distance = 0
    for x, y in list(zip(strand_a, strand_b)):
        if x != y:
            distance += 1

    return distance

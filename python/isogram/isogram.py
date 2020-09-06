import string


def is_isogram(attempt):
    chars = dict.fromkeys(list(string.ascii_lowercase), 0)
    for x in list(attempt.lower().replace(" ", "").replace("-", "")):
        if chars[x] > 0:
            return False

        chars[x] += 1

    return True

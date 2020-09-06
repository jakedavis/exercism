pairings = [
    ('first', 'and a Partridge in a Pear Tree.'),
    ('second', 'two Turtle Doves'),
    ('third', 'three French Hens'),
    ('fourth', 'four Calling Birds'),
    ('fifth', 'five Gold Rings'),
    ('sixth', 'six Geese-a-Laying'),
    ('seventh', 'seven Swans-a-Swimming'),
    ('eighth', 'eight Maids-a-Milking'),
    ('ninth', 'nine Ladies Dancing'),
    ('tenth', 'ten Lords-a-Leaping'),
    ('eleventh', 'eleven Pipers Piping'),
    ('twelfth', 'twelve Drummers Drumming')
]


def recite(start_verse, end_verse):
    return [compose(v) for v in range(start_verse, end_verse+1)]


def compose(verse):
    selected = pairings[0:verse]
    onthe = mytruelove(pairings[verse-1][0])

    if verse == 1:
        return onthe + selected[0][1][4:]

    return onthe + ', '.join(v for _, v in list(reversed(selected)))


def mytruelove(nth):
    return "On the {0} day of Christmas my true love gave to me: ".format(nth)

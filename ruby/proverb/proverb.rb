# proverb.rb
#
# I couldn't figure out a nice way to take 2 elements at a time. There's each_slice, but the slices
# we're taking need to overlap. Just using a counter with the index ended up being easier.
#
# We got to use the ternary operator in Proverb#final, which is always cool, to check for the
# qualifier. I also notice there isn't a test for when the final line item starts with a vowel, so
# you could refer to "a apple" or something similar.

class Proverb
  def initialize(*list, qualifier: nil)
    @list = list
    @qualifier = qualifier
  end

  def to_s
    idx = 0
    str = ""

    while idx < (@list.length-1)
      str << line(@list[idx], @list[idx+1])

      idx += 1
    end

    str << final

    str
  end

  def line(item1, item2)
    "For want of a #{item1} the #{item2} was lost.\n"
  end

  def final
    insert = @qualifier ? [@qualifier, @list.first].join(' ') : @list.first

    "And all for the want of a #{insert}."
  end
end

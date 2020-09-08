# collatz_conjecture.rb
#
# Another one where I feel there are probably some Ruby constructs or methods that make this
# possible without a while loop, but I felt okay about this because it really is just a simple
# algorithm.

class CollatzConjecture
  def self.steps(num)
    raise ArgumentError, "Bad input!" if CollatzConjecture.invalid?(num)

    acc, steps = num, 0

    while acc != 1
      acc = acc.even? ? acc / 2 : (3*acc)+1

      steps += 1
    end

    steps
  end

  def self.invalid?(num)
    !num.is_a?(Integer) || num <= 0
  end
end

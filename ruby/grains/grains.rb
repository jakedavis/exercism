# grains.rb
#
# This is kind of a weird one. I was confused because I thought the square method was supposed to
# sum the total grains up til that n. It turns out you're just calculating the number of grains on
# that specific square.
#
# In the interest of writing a more complete solution, I implemented total_up_to, which sums the
# grains up to that number. The total is then just that method with an input of 64.

class Grains
  def self.square(n)
    if n < 1 || n > 64
      raise ArgumentError, "Input must be integer between 1 and 64"
    end

    2**(n-1)
  end

  def self.total
    Grains.total_up_to(64)
  end

  def self.total_up_to(n)
    Array(1..n).map {|i| Grains.square(i)}.reduce(&:+)
  end
end

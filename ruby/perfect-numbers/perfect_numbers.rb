# perfect_numbers.rb
#
# Scans for Aliquout sums and returns the type of number.

module PerfectNumber
  def self.classify(num)
    raise RuntimeError if num < 0

    factors = []

    i = 1; while i <= num / 2 do
      factors << i if num % i == 0
      i += 1
    end

    sum = factors.reduce(&:+)
    if sum > num
      'abundant'
    elsif sum < num
      'deficient'
    else
      'perfect'
    end
  end
end

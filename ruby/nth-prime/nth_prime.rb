class Prime
  def self.nth(occurrence)
    raise ArgumentError, "Bad input" if Prime.invalid?(occurrence)

    n, which = 2, 0
    primes = []

    loop do
      if Prime.is?(n, primes)
        which += 1
        primes << n
      end

      break if which == occurrence

      n += 1
    end

    n
  end

  def self.is?(n, primes)
    primes.select do |i|
      n % i == 0
    end.empty?
  end

  def self.invalid?(n)
    n <= 0
  end
end

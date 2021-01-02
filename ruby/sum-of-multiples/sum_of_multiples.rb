# sum_of_multiples.rb

class SumOfMultiples
  def initialize(*factors)
    @factors = factors.select(&:positive?)
  end

  def to(limit)
    @factors.map do |factor|
      (1..(limit / factor.to_f).ceil-1).map do |mult|
        mult * factor
      end
    end.flatten.uniq.reduce(&:+) || 0
  end
end

# palindrome_products.rb
#
# Product#calculate_factors ended up getting a bit goofy, but I think it's okay. I initially was
# using Enum#each and using side effects to insert into a Set I declared on initialization. That
# felt bad, so I wanted to use Enum#map/etc. I'm pleased with where it ended up.

require 'set'

class Palindromes
  attr_accessor :generate, :max_factor, :min_factor

  def initialize(max_factor: 1, min_factor: 1)
    @max_factor = max_factor
    @min_factor = min_factor
    @generate   = generate
  end

  def generate
    Set.new(
      Array(@min_factor..@max_factor).map do |v1|
        Array(@min_factor..@max_factor).map {|v2| v1*v2}
      end.flatten.select do |vs|
        vs.to_s.reverse == vs.to_s
      end
    )
  end

  def largest
    Palindromes::Product.new(@generate.max, @min_factor, @max_factor)
  end

  def smallest
    Palindromes::Product.new(@generate.min, @min_factor, @max_factor)
  end

  class Product
    attr_accessor :value, :factors

    def initialize(val, min, max)
      @value   = val
      @min     = min
      @max     = max

      @factors ||= calculate_factors
    end

    def calculate_factors
      Set.new(
        Array(@min..@max).select do |v|
          @value % v == 0
        end.map do |v|
          [v, @value / v].sort
        end.select do |fs|
          fs.first <= @max && fs.last <= @max && @value % fs.last == 0
        end
      ).to_a
    end
  end
end

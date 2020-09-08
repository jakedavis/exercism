# trinary.rb

class Trinary
  attr_accessor :to_decimal

  def initialize(val)
    @to_decimal = Trinary.invalid?(val) ? 0 : convert(val)
  end

  def self.invalid?(val)
    val.chars.any? {|c| c != '0' && c != '1' && c != '2'}
  end

  def convert(val)
    val.chars.reverse.map.with_index do |v, idx|
      v.to_i*3**idx
    end.reduce(&:+)
  end
end

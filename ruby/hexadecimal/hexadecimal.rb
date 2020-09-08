# hexadecimal.rb
#
# Same concept as binary and trinary cases. The significant difference is that there's a
# VALID_CHARS array that implicitly contains the value of the character through the index. We can
# grab the index of the relevant character as we traverse the string and it will essentially
# convert a-f to 10, 11, 12, etc.

class Hexadecimal
  attr_accessor :to_decimal

  VALID_CHARS = [
    '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'
  ]

  def initialize(val)
    @to_decimal = Hexadecimal.invalid?(val) ? 0 : convert(val)
  end

  def self.invalid?(val)
    val.chars.any? {|v| !VALID_CHARS.include?(v)}
  end

  def convert(val)
    val.chars.reverse.map.with_index do |c, idx|
      VALID_CHARS.index(c)*16**idx
    end.reduce(&:+)
  end
end

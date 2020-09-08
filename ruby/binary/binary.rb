# binary.rb
#
# Pretty simple validity check - if any char is both not 0 and not 1 the string must be invalid.
# Reversing the string means we can just raise 2 to the power of the index, and we can filter out
# whether it's 0 or 1 by simply multiplying by the value at each digit.

class Binary
  def self.to_decimal(input)
    raise ArgumentError, "Invalid binary string" if Binary.invalid?(input)

    input.chars.reverse.map.with_index {|v, idx| v.to_i*2**idx}.reduce(&:+)
  end

  def self.invalid?(input)
    input.chars.any? {|c| c != '0' && c != '1'}
  end
end

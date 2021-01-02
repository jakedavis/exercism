# matching_brackets.rb

module Brackets
  def self.paired?(str)
    stack = []
    str.chars.select do |c|
      Brackets.open?(c) || Brackets.closed?(c)
    end.reject do |b|
      Brackets.open?(b) ? stack.push(b) : Brackets.opposites?(stack.pop, b)
    end.empty? && stack.empty?
  end

  def self.opposites?(o, c)
    {
      '(' => ')',
      '[' => ']',
      '{' => '}',
    }[o] == c
  end

  def self.open?(c)
    ['(', '{', '['].include?(c)
  end

  def self.closed?(c)
    [')', '}', ']'].include?(c)
  end
end

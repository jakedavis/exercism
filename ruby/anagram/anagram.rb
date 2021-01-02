# anagram.rb

class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(choices)
    choices.select do |choice|
      @word.chars.sort == choice.downcase.chars.sort && @word != choice.downcase
    end
  end
end

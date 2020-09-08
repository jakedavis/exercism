class Bob

  QUESTION = "Sure.".freeze
  YELL     = "Whoa, chill out!".freeze
  YELLED_Q = "Calm down, I know what I'm doing!".freeze
  SILENCE  = "Fine. Be that way!".freeze
  WHATEVER = "Whatever.".freeze

  def self.hey(remark)
    if Bob.is_yelled_q?(remark)
      YELLED_Q
    elsif Bob.is_yell?(remark)
      YELL
    elsif Bob.is_question?(remark)
      QUESTION
    elsif Bob.is_silence?(remark)
      SILENCE
    else
      WHATEVER
    end
  end

  # Using squeeze+chop will eliminate trailing whitespace, so we can check the last legitimate
  # character for a question mark.
  def self.is_question?(remark)
    remark[-1] == '?' || remark.squeeze.chop[-1] == '?'
  end

  # One quirk here is that yells have letters in them, which makes sense.
  def self.is_yell?(remark)
    remark.upcase == remark && /[a-zA-z]./.match(remark)
  end

  def self.is_yelled_q?(remark)
    Bob.is_question?(remark) && Bob.is_yell?(remark)
  end

  # This is slightly brittle and depends on the order in the hey method above. Take another look at
  # this at some point.
  def self.is_silence?(remark)
    /\w+/.match(remark).nil?
  end
end

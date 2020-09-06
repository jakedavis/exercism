# HighScores
#
# Simple enough. I feel this is a much stronger solution than the most starred one on Exercism,
# where all the methods I have below are instead attributes derived from the scores passed into the
# initialize method. In that case, if you wanted to have an `add_score` method, your highest/latest
# score wouldn't update. You could derive the other attributes from @scores instead, but it gets
# into a logical question over whether, for example, your personal top three is really an attribute
# of a high score tracker, which I don't really think it is.

class HighScores
  attr_accessor :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    @scores.sort.reverse[0..2]
  end

  def latest_is_personal_best?
    personal_best == latest
  end

end

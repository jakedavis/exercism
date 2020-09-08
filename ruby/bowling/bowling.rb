# bowling.rb
#
#

require 'pry'

class Game
  attr_accessor :score

  def initialize
    @score = 0
    @mgr   = FrameManager.new
  end

  def roll(pins)
    @mgr.handle_roll(pins)
  end

  def score
    fill_score = @fill.score + @fillfill.score

    @mgr.frames.each_with_index do |frame, idx|
    end
  end

  class FrameManager
    attr_accessor :frame, :frames

    def initialize
      @frames = [Frame.new]
      @frame  = 1

      @fill     = Frame.new
      @fillfill = Frame.new
    end

    def handle_roll(pins)

      if current_frame.score == 10 || current_frame.throws == 2
        @frames << Frame.new
      end

      current_frame.roll(pins)
    end

    def current_frame
      @frames.latest
    end

    def next_throw(num)
      if num == 10

      end

      @frames[num+1].score
    end

    def next_two_throws(num)
      if @frames[num+1].throws == 1
        next_throw(num) + next_throw(num+1)
      else
        next_throw(num)
      end
    end
  end

  class Frame
    attr_accessor :score, :throw

    def initialize
      @score  = 0
      @throws = 0
      @bonus  = 0
    end

    def roll(pins)
      @score += pins
      @throws += 1

      @score
    end
  end
end

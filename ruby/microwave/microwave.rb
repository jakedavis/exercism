# microwave.rb

class Microwave
  attr_reader :timer

  def initialize(time)
    @timer = minutes(time) + ':' + seconds(time)
  end

  def minutes(time)
    mins = time < 100 ? time / 60 : time / 100

    "%02d" % mins
  end

  def seconds(time)
    secs = time < 100 ? time % 60 : time % 100

    "%02d" % secs
  end
end

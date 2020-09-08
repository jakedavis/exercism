class Matrix
  def initialize(str)
    @str = str
  end

  def rows
    @str.split("\n").map do |arr|
      arr.split.map(&:to_i)
    end
  end

  def columns
    @rows.first.zip(*rows[1..])
  end
end

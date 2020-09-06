# matrix.rb
#
# Rows are a bit obvious, the newlines tell you where to split and then you need to generate
# integers out of the remaining elements.
#
# Columns are a bit more interesting. Knew I had to zip, since zip lets you correlate between
# like-indexes between two arrays. Once I had the rows available, you can use the splat operator to
# essentially de-array the arguments to zip, but you also need to get rid of the first element
# since it's the thing you're zipping! Hence the [1..].

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

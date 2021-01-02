class Array
  def accumulate
    result = []

    self.each do |element|
      result << yield(element)
    end

    result
  end
end

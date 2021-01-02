class Array
  def keep
    result = []

    self.each do |element|
      result << element if yield(element) == true
    end

    result
  end

  def discard
    result = []

    self.each do |element|
      result << element if yield(element) == false
    end

    result
  end
end

module Enumberable
  def all?
    for i in self
      return false unless yield i
    end
    true
  end

  def any?
    for i in self
      return true if yield i
    end
    false
  end

  def filter
    result = []
    for i in self
      result << i if yield i
    end
    result
  end

  def sort
    result = self.to_a
    result.sort!
    result
  end

  def max
    result = self.to_a
    result.max
  end

  def min
    result = self.to_a
    result.min
  end
end

module Enumberable
  def all?
    each do |i|
      return false unless yield i
    end
    true
  end

  def any?
    each do |i|
      return true if yield i
    end
    false
  end

  def filter
    result = []
    each do |i|
      result << i if yield i
    end
    result
  end

  def sort
    result = []
    each do |i|
      result << i
    end
    result.sort
  end

  def max
    result = []
    each do |i|
      result << i
    end
    result.sort[-1]
  end

  def min
    result = []
    each do |i|
      result << i
    end
    result.sort[0]
  end

  def add (num)
    result = []
    each do |i|
      result << i
    end
    result << num
  end
end

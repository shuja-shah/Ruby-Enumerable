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
end

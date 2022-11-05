require_relative 'enumerable'

class List
  include Enumberable
  def initialize(list)
    @list = list
  end

  def each(&list)
    @list.each(&list)
  end
end

## TESTS

list = List.new([1, 2, 3, 4, 5])
list.all? { |i| i < 6 } # => true
list.any? { |i| i < 2 } # => true
list.filter { |i| i < 3 } # => [1,2]
# print list.sort # => [1,2,3,4,5]
# print list.max # => 5
# print list.min # => 1

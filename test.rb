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


list = List.new([3, 99 , 1000000000000, 550, 0 , -1])

puts list.max

puts list.min

puts list.sort

puts list.add(200)

puts list.add(400)

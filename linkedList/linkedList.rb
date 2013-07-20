class LinkedList
  def initialize(*args)
    args = args.reverse
    node = nil
    args.each do |value|
      temp = Node.new(node, value)
      node = temp
    end
  end
end

class Node
  def initialize(nxt, value)
    @nxt = nxt
    @value = value
  end

  attr_accessor :nxt, :value
end


#ll = LinkedList.new(1, 2, 3, 4, 5)

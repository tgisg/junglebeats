class Node #creates my blueprint
attr_accessor :data, :next_node, :next


  def initialize(data = nil, next_node = nil)
    @data = data
    @next_node = next_node
  end

end

# node = Node.new('hi', 4)
#
# node
# node.data = "ho"
#
# node.next_node = 6
# node.next_node = Node.new()

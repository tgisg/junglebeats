require_relative "node"
require "pry"#allows me to do Node.new in this file. I'm calling the entire class Node and everything in it. attr_reader only allows me to access the instance variables in class Node, so it is not enough.
class LinkedList
  attr_reader :head #is like creating a method head and then calling @head. This does that for me without having to make a new method, because I have initialized an instant variable @head to store the head attribute of the node.

  # def initialize(data = nil)
  def initialize # (data = nil)
    @head = nil
  end

  def append(data)
    current = @head
    node = Node.new(data)
    if @head.nil?
      @head = node
    else
      until current.next_node.nil?
        current = current.next_node
      end
      current.next_node = node
    end
    data
  end

  def insert(count, data)
    current = @head
    count.times do
      current = current.next_node
    end
    successive_nodes = current.next_node
    until new_data = Node.new(data)
      current == nil
    end
    current = new_data
  end

  def prepend

  end

  def count
    current = @head
    counter = 1
    until current.next_node.nil?
      counter += 1
      current = current.next_node
    end
    counter
   end


  def to_string
    # current = @head
    # data = @data
    #
    # until current.next_node.nil?
    #
    #   current = current.data
    # end
    # data.to_s
  end



  end



  # new_node.next_node = node
  # until new_node.next_node == nil
  # new_node = @head.next_node
  #   new_node = new_node.next_node
  # end
  # if @next_node = nil
  #   @next_node = node
  # else @next_node = node.next
  # @link_to_next_code = node.new
  # elsif @link_to_next_node = !nil
  #   @link_to_next_node = node.next
  # data









# @head = Node.new(data)
# @head = Node.new(data)

# @head = head



#   def append(data)
#     @head
#     # node = Node.new(data)
#     # if @head.nil?
#     #   @head = node
#     #
#
#   end
#
#
#
#
#   # def append(data)
#   #   # node = Node.new(data)
#   #   if @head.nil?
#   #     @head = node
#   #   else
#   #     make_node(@head, node)
#   #   end
#   # end
#
#   def make_node
#   end
#
#   def count
#
#   end
#
#   # def append(new_word)
#   #   @list = @list + new_word
#   # end
#
# end
#
# # l = LinkedList.new
# # l # => #<LinkedList:0x007f96a4811950 @head=#<Node:0x007f96a4811928 @data=nil, @next_node=nil>>
# # u = LinkedList.new("hi")
# # u # => #<LinkedList:0x007f96a4811400 @head=#<Node:0x007f96a48113d8 @data="hi", @next_node=nil>>

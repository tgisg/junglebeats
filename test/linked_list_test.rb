require "minitest/autorun"
require "minitest/pride"
require 'pry'
require_relative "../lib/linked_list"

class LinkedListTest < Minitest::Test

  def test_head_is_nil
    list = LinkedList.new
    # require 'pry'; binding.pry
    assert_equal nil, list.head
  end

  def test_it_appends
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
    list.append ("bloop")
    # assert_equal Node, list.head.class
  end

  def test_first_node_appends
    list  = LinkedList.new
    assert_equal nil, list.head #at this point list.head is still a member of NilClass because it has been set to Nil.
    list.append ("thing") #here we take a step and now we are putting some piece of data into head, so now it is no longer producing a value of nil.

    assert_equal Node, list.head.class #now when you ask what class list.head belongs to, it will return Node rather than NilClass
    assert_equal "thing", list.head.data
    refute list.head.next_node
  end

  # def test_next_node_is_nil
  #   list = LinkedList.new
  #   assert_equal nil, list.head.next_node
  # end

  def test_it_counts
    skip
    list = LinkedList.new
    list.append("a")
    assert_equal 1, list.count
  end

  def test_it_counts_more
    skip
    list = LinkedList.new
    list.append("a")
    list.append("b")
    assert_equal 2, list.count
  end

  def test_it_makes_a_string
    list = LinkedList.new
    list.append("bloopy")
    assert_equal "bloopy", list.to_string
  end


   insert(1, "woo,")
end

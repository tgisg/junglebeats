require "minitest/autorun"
require "minitest/pride"
require_relative "../lib/node"

class NodeTest < Minitest::Test

  def test_it_takes_data
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_next_node_returns_nil
    node = Node.new(nil)
    assert_equal nil, node.link_to_next_node
  end

end

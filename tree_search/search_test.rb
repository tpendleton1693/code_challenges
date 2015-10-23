require 'minitest/autorun'
require_relative 'search'

class TestSearch < MiniTest::Test

  def setup

    # The "Leafs" of a tree, elements that have no children
    @fifth_node = Tree.new(5, [])
    @eleventh_node = Tree.new(11, [])
    @fourth_node = Tree.new(4, [])


    # The "Branches" of the tree
    @ninth_node = Tree.new(9, [@fourth_node])
    @sixth_node = Tree.new(6, [@fifth_node, @eleventh_node])
    @seventh_node = Tree.new(7, [@sixth_node])
    @fifth_node = Tree.new(5, [@ninth_node])

    # The "Trunk" of the tree
    @trunk = Tree.new(2, [@seventh_node, @fifth_node])

  end

  def test_search_two
    assert_equal(@trunk, depth_search(@trunk, 2))
    assert_equal(@trunk, breadth_search(@trunk, 2))
  end

  def test_search_eleven
    assert_equal(@eleventh_node, depth_search(@trunk, 11))
    assert_equal(@eleventh_node, breadth_search(@trunk, 11))
  end

  def test_search_four
    assert_equal(@fourth_node, depth_search(@trunk, 4))
    assert_equal(@fourth_node, breadth_search(@trunk, 4))
  end

  def test_search_invalid
    assert_equal(nil, depth_search(@trunk, 577))
    assert_equal(nil, breadth_search(@trunk, 577))
  end

end

class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

end

def depth_search(node, value)
  if node.payload == value
    node
  else
    result = nil
    node.children.each do |child|
      result = depth_search(child, value)
      break if result
    end
    return result
  end
end

def breadth_search(node, value)
  queue = []

  queue << node
  if node.payload == value
    node
  else
    current_node = queue.shift
    while current_node do

      # Cycle through children, add them to the array and check their values
      current_node.children.each do |child|
	queue << child
	return child if child.payload == value
      end

      current_node = queue.shift
    end
  end
end
  
# The "Leafs" of a tree, elements that have no children
fifth_node = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node = Tree.new(4, [])


# The "Branches" of the tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
fifth_node = Tree.new(5, [ninth_node])

# The "Trunk" of the tree
trunk = Tree.new(2, [seventh_node, fifth_node])

breadth_search(trunk, 11)

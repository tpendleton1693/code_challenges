class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

end

def depth_search(node, value)
  if node.payload == value
    puts "Search returned #{node.payload}" 
    node
  else
    node.children.each do |child|
      puts "value in child #{child.payload}"
      result = depth_search(child, value)
      return result if result.payload == value
    end
    node
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


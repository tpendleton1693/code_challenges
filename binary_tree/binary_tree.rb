class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left=nil, right=nil)
    @payload = payload
    @left = left
    @right = right
  end
end

def btree(array)
  @trunk = BinaryTree.new(array.first)
  prev = @trunk
  array.each do |value|
    while prev
      if value < prev.payload  
	if prev.left == nil
	  prev.left = BinaryTree.new(value)
	  prev = @trunk
	  break
	else
	  prev = prev.left
	end

      elsif value > prev.payload 
	if prev.right == nil
	  prev.right = BinaryTree.new(value)
	  prev = @trunk
	  break
	else
	  prev = prev.right
	end
      end
    end
  end
  puts @trunk
end

unsorted = [4,2,9,3]
btree(unsorted)


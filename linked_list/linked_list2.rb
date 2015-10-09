class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  print "#{list_node.value} --> "
  if list_node.next_node.nil?
    print "nil\n"
  else
    print_values(list_node.next_node)
  end
end

def reverse_list(list_node, previous = nil)
  while list_node
    head = list_node.next_node
    list_node.next_node = previous
    previous = list_node
    list_node = head
  end
  previous
end

def reverse_list_recursive(list_node, previous = nil)
  if list_node.nil?
    previous
  else
    head = list_node.next_node
    list_node.next_node = previous
    previous = list_node
    reverse_list_recursive(head, previous)
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "------------------------"

revlist = reverse_list_recursive(node3)
print_values(revlist)

#Practicing implementing a binary search tree data structure

#Create a Tree Node

class TreeNode
	attr_accessor :value, :left, :right

	def initialize(value, left, right)
		@value = value
		@left = left
		@right = right
	end
end

class BinarySearchTree
	attr_accessor :root

	#initialize root node
	def initialize(value)
		puts "initializing Binary Search Tree with: " + value.to_s
		@root = TreeNode.new(value, nil, nil)  
	end

	#insert a node with a specified value, if < current node, place new node to the left
	#if > current node, place new node to the right
	def insert(value)
		puts "Inserting: " + value.to_s
		current_node = @root
		while nil != current_node
			if (value > current_node.value)	&& (current_node.right == nil)
				current_node.right = TreeNode.new(value, nil, nil)
			elsif (value < current_node.value)	&& (current_node.left == nil)
				current_node.left = TreeNode.new(value, nil, nil)
			elsif (value > current_node.value)
				current_node = current_node.right
			elsif (value < current_node.value)
				current_node = current_node.left
			else
				return
			end
		end		
	end

	#pre-order traversal, recursive function
	def preOrderTraversal(node = @root)
		return if (node == nil)
		preOrderTraversal(node.left)
		preOrderTraversal(node.right)
		puts node.value.to_s
	end

	#post-order traversal, recursive function
	def postOrderTraversal(node = @root)
		return if (node == nil)
		puts node.value.to_s
		postOrderTraversal(node.left)
		postOrderTraversal(node.right)
	end

	#In-order traversal, recursive function
	#Display smaller children first, by going left. Then display the current node, then display the right node.
	def inOrderTraversal(node = @root)
		return if (node == nil)
		inOrderTraversal(node.left)
		puts node.value.to_s
		inOrderTraversal(node.right)
	end

end



#Test
bst = BinarySearchTree.new(10)
bst.insert(11)
bst.insert(9)
bst.insert(5)
bst.insert(7)
bst.insert(18)
bst.insert(17)
# Demonstrating Different Kinds of Traversals
puts "In-Order Traversal:"
bst.inOrderTraversal
puts "Pre-Order Traversal:"
bst.preOrderTraversal
puts "Post-Order Traversal:"
bst.postOrderTraversal

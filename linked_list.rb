#Define Node class which will hold the following:
# value - this will store the value of the current list element
# next - stores the next Node in the linked list

class Node
	attr_accessor :value, :next

	def initialize(value)
		@value = value
	end
end

#Define LinkedList class which will hold the following
# head - pointer to the head of the linked list
# tail - pointer to the tail of the linked list

class LinkedList
	attr_accessor :head, :tail

#upon initializing, the head and tail will be the same
	def initialize(head)
		raise "LinkedList must be initialized with a Node." unless head.is_a?(Node)  

		@head = head
		@tail = head
	end

#Insert Node after the tail of the LinkedList
	def insert(node)
		@tail.next = node
		@tail = @tail.next
	end

	def print
		node_to_print = @head

		while node_to_print != nil
			puts "\tNode Value = #{node_to_print.value}"
			node_to_print = node_to_print.next
		end
	end

#iterate through linked list and yield values using block (if given block)
	def iterate
		if block_given?
			current_node = @head 

			while current_node != nil
				yield current_node.value 
				current_node = current_node.next
			end
		else
			print 
		end
	end
end



#Test Code for Linked Lists, with nodes having values 1..5
node = Node.new(1)

list = LinkedList.new(node)

(2..5).each { |n| list.insert(Node.new(n))}

puts "\nThe current values in the Linked List are: \n"

list.print

puts "\nValues of head and tail of Linked List:"

puts "\n head is #{list.head.value}"
puts "\n head is #{list.tail.value}"

puts "\n iterate through linked list without a block\n"

list.iterate

puts "iterate through linked list with a block"

list.iterate { |n| puts "Node value squared = #{n ** 2}" }







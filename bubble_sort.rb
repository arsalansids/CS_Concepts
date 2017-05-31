#This is an example of a bubble sort, it will return a sorted array, from a non-sorted array

def bubble_sort(array)
	n = array.length

	loop do 
		swapped = false

		(n - 1).times do |i|
			if array[i] > array[i+1]
				array[i], array[i+1] = array[i+1], array[i]
				swapped = true 
			end 
		end

		break if not swapped 

	end 

	return array 

end

array = [141, 54646, 1323, 23, 76, 5, 2, 8, 1, 23]

p bubble_sort(array) #returns [1, 2, 5, 8, 23, 23, 76, 141, 1323, 54646]

array = [9219, 123214, 234341, 43, 231, 3, 12421, 57, 3443]

p bubble_sort(array) #returns [3, 43, 57, 231, 3443, 9219, 12421, 123214, 234341]
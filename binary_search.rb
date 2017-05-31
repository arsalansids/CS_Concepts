#This is an example of a binary search, where for every iteration, a sorted 
#array will only be searching one half of the array being searched

#this method will return the position in a given array of the number being searched
def binary_search(array, find)
	low = 0
	hi = array.length-1  

	while (low <= hi)
		mid = low + (hi-low)/2

		if array[mid] == find
			return mid
		elsif array[mid] < find
			low = mid + 1
		else 
			hi = mid - 1
		end	
	end

	return "Value not found in array"

end

arr = [3, 4, 6, 8, 9, 10, 33, 123, 544, 546, 766, 942, 1010]


p binary_search(arr, 33) #returns position 6
p binary_search(arr, 6) #returns position 2
p binary_search(arr, 123) #returns position 7
p binary_search(arr, 1010) #returns position 12
p binary_search(arr, 740) #returns value not found
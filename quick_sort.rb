#Implementing Quick Sort for an array of numbers

def quick_sort(array, left, right)
	if (left>= right)
		return array
	else
		pivot = array[(left+right)/2] #using middle of array as pivot
		new_index = partition(array, left, right, pivot)
		quick_sort(array, left, new_index - 1)
		quick_sort(array, new_index, right)
	end
end

def partition(array, left, right, pivot)

	while (left <= right) do

		while (array[left] < pivot) do
			left+=1		
		end
		
		while (array[right] > pivot) do 
			right-=1
		end

		if (left <= right) 
			array[left], array[right] = array[right], array[left]
			left+=1
			right-=1
		end

	end
	return left	
end


array = [5454 ,3, 452, 7575, 234, 56, 5, 37575, 545, 2, 567, 37, 446]
p quick_sort(array, 0, 12) # prints [2, 3, 5, 37, 56, 234, 446, 452, 545, 567, 5454, 7575, 37575]


array = [3, 3, 3, 3, 3, 2, 1, 5, 7, 3, 1, 2, 3, 3, 3, 3]
p quick_sort(array, 0, array.length-1) #prints [1, 1, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 5, 7]




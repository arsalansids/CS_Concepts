#This is an example of using a Stack (Last-In First-Out data structure)
#to determine whether a given string has fulfilled it's requirements 
#for balanced parenthesis within the string

#This example also shows how to use a Hash Table to map keys to values
#The hash table will be used to determine which parenthesis is to be 
#currently searched for in a given string


#Using a hash key/value to allow easy search for which parenthesis will be searched for
PARENTHESIS = {
	"(" => ")",
	"{" => "}",
	"[" => "]"
}

#Create an array for each opening and closing parenthesis
OPEN_PARENTHESIS = PARENTHESIS.keys
CLOSE_PARENTHESIS = PARENTHESIS.values

def validate_parenthesis(string)
	
	stack = []

#loop through the string to look at each character for parenthesis
	string.each_char do |char| 

		#add the character to the stack if there's an open parenthesis 
		if OPEN_PARENTHESIS.include?(char)
			stack << char

		#remove the last character from the stack if the matching key/value closing parenthesis is found
		elsif CLOSE_PARENTHESIS.include?(char)
			(char == PARENTHESIS[stack.last]) ? stack.pop : (return false)
		end
	end

	#if the stack is not empty, parenthesis are not balanced and return false
	stack.empty?
end


#Test strings with different parenthesis combinations
p validate_parenthesis("(){}[]") #return true
p validate_parenthesis("[(])") #return false
p validate_parenthesis("(123+[{43434}*{34343}-(233*2)])") #return true


# a. Start with an array of integers, 1 through 5. 
# b. First, square all the elements in the array. 
# c. Then, sum all the elements of the squared array.


# part a

array = [1, 2, 3, 4, 5]

# part b

class Array
	
	def square()
		self.map! {|num| num ** 2}  #"!" changes array, self is from ln32
	end														# taking the array and mapping it, letting me square it

	def add_squares()
		# print self showing that the array has indeed changed
		# puts
		sum_of_array = 0											# "counter" for sum_of_array
		self.each {|num| sum_of_array += num} # the new "self", .each iterating over array, 
		print sum_of_array 					 					# each num is being added to sum_of_array
	end

end

print array.square
puts
array.add_squares
puts

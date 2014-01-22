# Suppose I have the following Array of tuples

array = [ ['a', 1], ['b', 2], ['c', '3' ], ['a', 2] ]
# 1. How can I convert this to a Hash?

# { 'a' => 1, 'b' => 2, 'c' => 3}
# 2. Once I've written the algorithm, 
# how would I make it generally available throughout my Ruby application?

# 1.
# hash = {}
# array.each do |k, v|
# 	hash[k] = v
# end

# puts hash

# 2.
# def make_to_hash(tuple_array)
# 	hash = {}
# 	tuple_array.each do |k, v|
# 		hash[k] = v
# 		# if hash[k].empty?
# 		# 	hash[k] << v
# 		# else
# 		# 	hash[k] = v
# 		# end
# 	end
# 	hash
# end

# print make_to_hash(array)


array = [ ['a', 1, 1], ['b', 2], ['c', '3' ], ['a', 2] ]
#   a = [
#     ["A", "a", 1],
#     ["A", "b", 2],
#     ["B", "a", 1]
#   ]

def a_to_h(x)
  h={}
  x.map do |nested|
    key = nested.shift
    h[key] ||= {}
    h[key].merge!({ nested.shift => nested.shift })
  end
  h
end

print a_to_h(array)


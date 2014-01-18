# prime numbers between 1 - 100

# ok, so a prime number is only divisible by itself and one
# these are the ones I am looking for
#       2      3      5      7     11     13     17     19     23     29 
#      31     37     41     43     47     53     59     61     67     71 
#      73     79     83     89     97 
require 'benchmark'
def array_test(max)
	arr = (2..max).to_a
	# arr.each do |i| ##sloowwwwww way
	(2..Math::sqrt(max)).each do |i| #fast way, yo
		arr.delete_if {|a| a % i == 0 && a != i }
	end
	arr
end

puts Benchmark.measure { array_test(100000) }

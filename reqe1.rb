# Suppose you have the following array

stuff = [:dog,:cat,:orange,:banana]
# 1. How can you slice this array to create a new array [:cat,:orange]
# 2. Add the element :apple on to the end of the array.
# 3. Now take :apple back off again
# 4. Add the element :fish to the start of the array.
# 5. Now remove the element :fish.

## 1

#### version a. 
## simple and easy
# new_arr = stuff.slice!(1, 2) #!~changes array & assigns to variable
# print new_arr
# puts
# print stuff	# just to show what is left in there

### version b.
# now in a method
# def slice_array(arr)
# 	arr.slice!(1, 2)
# end

# new_arr = slice_array(stuff) #runs method and assigns to a variable
# print new_arr #prints array
# puts
# print stuff


## 2

### version a.
# print stuff.push(:apple)
# puts

### version b.
# print stuff.insert(4, :apple)
# puts

# print stuff

### version c.
# stuff << :apple
# print stuff

## 3

# stuff.insert(4, :apple) # adding :apple to array

# ### version a.
# print stuff.pop
# puts
# print stuff

### version b. 

# stuff.delete_at(4) #deletes at specific index
# print stuff

### version c.
## for this I am going to add :apple one more time, print that out
## and show how the .delete() works
# stuff.insert(4, :apple)
# stuff.push(:apple)
# print stuff
# puts
# print stuff.delete(:apple)
# puts
# print stuff  # removes all :apple


## 4

### version a.
# stuff.unshift(:fish)
# print stuff

### version b.
# print stuff.insert(0, :fish)

## 5

# print stuff.insert(0, :fish)  #adding :fish to array
# puts
# print stuff.shift
# puts
# print stuff





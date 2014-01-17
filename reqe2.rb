# The following code will fail with NoMethodError : private method 'dream' called for Dog

# Assuming that you cannot modify the source code for the Dog class and that the method
# must remain private - how can you nonetheless call this method from outside of Dog class?
## original 
## Problem is that the method dream is being called as a private method. 
class Dog
    def speak
        puts "woof"
    end

    private

    def dream
        puts "chasing a rabbit"
    end
end

dog = Dog.new
dog.speak
# dog.dream						# will give an error
dog.send :dream   #the .send seems to be an odd feature of ruby
									#I would rather go about changing the code



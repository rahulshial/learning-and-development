# what is the difference between a block, proc and lambda?
# block is ruby code that cannot be assigned to a variable, but only be attached to a function or a method
# arguments to blocks and procs are optional
# lambda is a special kind of proc that has a strict argument check
# return method of proc and lambda are different 

def a(&block) 
  # the & converts the block into a proc and saving it as the block variable with a name of block. It can be named anything
  p block # prints out a the block as a Proc
  x = yield
  y = block.call
  # p x
  # p y
end

#blocks
a {
# does not have any name, it's only a closure
# a return statement here will work similar to the return statement in a proc and will not execute anything after this block
return
}

puts "after" # this will not be printed since the return statement in the block will not allow the code to reach this line

a do | x|
  # does not have any name, it's only a closure 
  p x # x is actually a optional argument and it's value is nil in the current context since it is not being passed from function a in the yield or block.call
end


proc {} # kernel proc method
Proc.new {}

# lambda
lambda {}
-> {}
# both the above are lambda

p lambda {} # this is also a proc - very interesting isn't it? --> #<Proc:0x0000000102a56b28 procs.rb:31 (lambda)>

l = ->(x) { x * x }
p l.call(2)
# p l.call() # this will throw an error since the lambda is expecting an argument

# whereas
p = Proc.new { }
p p.call(1,2,3,4,5) # this will not throw an error since the proc is not expecting any arguments
#  but we can pull out the values from the proc using the following
p = Proc.new { |x, y, z| z }
p p.call(1,2,3,4,5) # this will print out the value 3

def proc_method
  x = Proc.new { return "hello"}
  # because of the return statement on the proc, the code will not reach the next line
  # the return statement will return the value "hello" and the code will not reach the next line
  x.call + "world"
end

def lambda_method
  x = lambda { return "hello"}
  x.call + "world"
end

p proc_method
p lambda_method

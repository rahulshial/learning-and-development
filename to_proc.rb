# the & symbol does more than just calling to_proc on the object
def a(&block)
  p block
end

a do

end

["a"," b", "c"].map(&:upcase)
# is the same as
["a","b", "c"].map { |x| x.upcase }
# the & symbol is calling to_proc on the object
# the to_proc method is defined in the Symbol class

# in irb try the following
# :upcase.to_proc # returns --> #<Proc:0x000000011c3beb48(&:upcase) (lambda)>
# :upcase.to_proc.call("a") # returns --> "A"

# what is the & really doing behind the scenes
class Symbol
  def to_proc
    ->(obj, args=nil) { obj.send(self, *args) }
  end
end

# sort of what the & ends up doing is
["a","b", "c"].map(&->(obj, args=nil) { obj.send(:upcase, *args) })
# the & symbol is calling to_proc on the object
# the to_proc method is defined in the Symbol class
# the to_proc method is returning a lambda that takes an object and an optional argument and calls the send method on the object with the symbol and the optional argument
# the map method is calling the lambda with each element of the array as the object and the optional argument as nil
# the send method is calling the upcase method on the object
# the upcase method is returning the upcased string

class Formula
  def to_proc
    ->(obj) { obj * obj}
  end
end
[1,2,3].map(&Formula.new)

class Formula2
  def self.to_proc
    ->(obj) { obj * obj}
  end
end

[1,2,3].map(&Formula2)
class Person
  p self
  # same as Person.speak
  def self.speak
    p "class speak"
  end

  def speak
    p "instance of speak"
  end
end
 
Person.speak # class method called
Person.new.speak # instance method called

binding.irb
# person = Person.new
# person.instance_variables # -> []
# person.instance_variable_set(:@name, "Rahul")
# person.instance_variables # -> [:@name]
# person.instance_variable_get(:@name) # -> "Rahul"
# ['hello', 3, Person, Class, method(:puts)].map(&:class) # -> [String, Integer, Class, Class, Method]

class Person
  # by default, the initialize method is called when we define a new instance of a class
  def initialize()
  end
end

person = Person.new # this will call the initialize method

# redefines the original class. Not possible in other languages
class Person
  def hello
    puts "Hello"
  end
end

person.hello # this will print "Hello"
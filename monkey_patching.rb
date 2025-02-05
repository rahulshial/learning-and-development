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

#Active support allows us to add methods to the Integer class
#But this is very dangerous because it can cause conflicts with other libraries

class Integer
  def hours
    60 * minutes
  end

  def minutes
    self * 60
  end

  def days
    24 * hours
  end
end

puts 2.hours
puts 3.days

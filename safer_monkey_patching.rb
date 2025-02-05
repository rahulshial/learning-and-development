require 'active_support/all'

# if you accidently override another class, you can end up having undesirable results or errors
# and have no idea what's causing them
# this is why monkey patching is considered dangerous
# to avoid this, you can use refinements
# refinements are a way to monkey patch a class, but only in a specific scope
# so instead of defining the methods in the Integer class as under 
# class Integer
#   def hours
#     60 * minutes
#   end

#   def minutes
#     self * 60
#   end

#   def days
#     24 * hours
#   end
# end

# you can define the methods in a module and then use the using method to apply the refinements
# to the Integer class in a specific scope
# this way, you can avoid conflicts with other libraries
# refinements are only available in Ruby 2.0 and later
module TimeHelpers
  refine Integer do
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
end

# to use the refinements, you need to use the using method. This will apply the refinements to the Integer class globally
# using TimeHelpers

# the following 2 lines will use active support and not timeHelpers
puts 2.hours
puts 2.hours.class

puts 3.days

class Person
  # this will only apply the refinements to the Person class
  using TimeHelpers
  def reminder
    1.hours
  end
end

reminder = Person.new.reminder
p reminder
p reminder.class
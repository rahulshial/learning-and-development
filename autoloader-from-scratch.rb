# rudimentary autoloader
# This is a simple autoloader that loads classes from the "concerns" directory
# begin
#   Authentication
# rescue NameError => e
#   # p e.message.split.last
#   require "./concerns/#{e.message.split.last.downcase}"
# end

# p self.class # object is what everything is inherited from

class Object
  def self.const_missing(name)
    @looked_for ||= {}
    str_name = name.to_s
    file = "./concerns/#{str_name.downcase}"
    raise "Class not found: #{name} in #{file}.rb" if @looked_for[str_name]
    @looked_for[str_name] = true
    require file
    klass = const_get(name) # this will return the class
    return klass if klass
  end
end

class Module
  def const_missing(name)
    @looked_for ||= {}
    str_name = name.to_s
    file = "./concerns/#{str_name.downcase}"
    raise "Module not found: #{name} in #{file}.rb" if @looked_for[str_name]
    @looked_for[str_name] = true
    require file
    klass = const_get(name) # this will return the class
    return klass if klass
  end
end

Authentication
Authentication
# p Authentication


module User
  p Module.nesting
  # Login
end
# Aha moment
# a variable in all upper case is a constant holding a value - FOO_BAR = 1
# Whereas a variable in camel case - is a constant for a class / method - Authentication
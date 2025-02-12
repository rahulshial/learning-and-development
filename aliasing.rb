class Subscription
  def canceled?
    false
  end

  # preferred way to alias a method
  # def cancelled?
  #   canceled?
  # end

  # another way to alias a method. alias is a ruby keyword
  # called with a lexical scope of the class like
  # alias self.cancelled? or Subscription.cancelled?
  # alias cancelled? canceled?
  # alias :cancelled? :canceled?
   
  
  # alias method defined on Module. It is not a ruby keyword hence we pass symbols as arguments
  # can be defined in a separate context and we can change the value itself
  # class eval do
    # instance_eval do
      # alias_method :cancelled?, :canceled?
    # end
  # end
  alias_method :cancelled?, :canceled?

end

class User
  def name
    "John Doe"
  end
  # alias full_name name
  # alias_method :full_name, :name
  
  # better way of defining alias overriden methods
   
  def full_name
    name
  end
end

class Admin < User
  def name
    "Admin"
  end
end

p Subscription.new.cancelled?

p User.new.full_name # => "John Doe"
p Admin.new.full_name # => "John Doe"
# though we are re-defining the name method in Admin class, the alias full_name is still pointing to the name method in User class because of lexical scoping and defined at run time
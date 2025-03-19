class ApplicationRecord
  # class variable - shared by the class and all it's sub-classes, but ActiveRecord cannot use it. it's a global variable and changes by any sub class affect it
  # good for using DB connections which are shared across all sub-classes
  # @@validations = {}

  # instance variable - used for the specific instance of the class
  # however, this declaration cannot be used / inherited by any of the sub-classes
  # @validations = {}

  # so we create a inheritance
  def self.inherited(base)
    # @validations = {}
    # as the class is inherited, validations is accessible to sub-classes
    
    # this prints our ApplicationRecord for User and Project, but prints User for Admin
    # Why does it do this?
    # basically when User inherits from ApplicationRecord, the inherited method is added into the User class (ruby magic), 
    # so since Admin inherits from user, it effectively means Admin < User.inherited(Admin), so self in User prints User and not Application Record
    #
    # p self 
    # base.instance_variable_set(:@validations, {})

    # what this does is that when the sub-class instantiates, it uses the data from the parent, and if not available, then an empty hash
    # but all sub-classes modify the same address in memory
    # check the address of the variables thru the <class>.<method>.object_id
    # base.instance_variable_set(:@validations, @validations || {})
    
    # so to ensure that each sub-class gets it's own @validations, we need to duplicate the class variable
    # ensures that each class has a brand new hash to work with
    # base.instance_variable_set(:@validations, @validations.dup || {})

    # simplified version
    @validations ||= {}
    base.instance_variable_set(:@validations, @validations.dup)

  end

  def self.validates(name, **options)
    # @@validations[name] = options
    @validations[name] = options
  end

  def self.validations
    # @@validations
    @validations
  end
end

class User < ApplicationRecord
  # need to define the instance variable specific to this class, since the instance variable defined in ApplicationRecord is not accessible thru User.
  #  however this is not what we want to do, as we want to inherit the validations from the parent class
  # @validations = {}
  validates :user, presence: true
end


class Project < ApplicationRecord
  validates :project, presence: true
end

class Admin < User
  validates :admin, presence: true # what this is doing is that it reimplements the global class variable and if we modify the Admin, the User also gets modified
end


# p ApplicationRecord.validations
p User.validations
p Project.validations
p Admin.validations

p User.validations.object_id
p Project.validations.object_id
p Admin.validations.object_id
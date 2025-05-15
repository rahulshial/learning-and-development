class Post
 # This is the top level Post class or outer level post
end

module Admin
  class Post # This is the Admin::Post class or inner level post
    class Name # nesting classes is possible
      p Module.nesting # => [Admin::Post::Name, Admin::Post, Admin]
    end
  end
  class User
    p Module.nesting # keeps track of module nesting
    # => [Admin::User, Admin]
    
    # We are in the Admin module, so it will look for Post in the Admin module first
    # and it will find Admin::Post
    # If we want to access the top level Post class, we can use the double colon
    p Post # => Admin::Post (inner level post)

    # If we want to access the top level Post class, we can use the double colon
    p ::Post # => Post (outer level Post Class)
  end
end

class Admin::User # direct reference to specific class
  # Because we are going directly to the class Admin::User, we are skipping the nesting of Admin::User
  p Module.nesting # => [Admin::User]

  # Explicit reference to Admin::Post
  p Admin::Post # => Admin::Post (inner level post)

  # We are not in the Admin module anymore, so we cannot access Admin::Post
  # because const lookups are relative to the current module/class, this is going to look where it is defined and work up the stack
  # But because we are not in the Admin module anymore, it will look for Post in the current context, which is the top level
  # So it will look for Post in the top level, and it won't find it
  p Post # => NameError: uninitialized constant Post if Post is not defined in the top level, else it will return Post
  p Admin::Post # => Post (explicit inner level post)
  p ::Post # => Post (top level Post Class)
  #
end

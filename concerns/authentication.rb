$LOAD_PATH.unshift("./concerns")
# load "authentication.rb"
# load "authentication.rb" # multiple loads

# load "./concerns/authentication.rb"

# require_relative "authentication" # loads only once, but may not get the latest changes

autoload :Authentication, "authentication.rb" # predefine Authentication constant, and loads the file when accessed, more like lazy loading - load only if required

# Authentication
# Authentication
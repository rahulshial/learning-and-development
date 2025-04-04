puts
puts
puts "-----------------------"
puts
puts "hello from another.rb"
puts
puts "-----------------------"

# require "#{__dir__}/other" # using internal variables, similar to the absolute path when lib is not in the load path - typically explicit requires are not used
require_relative "other" # typically used to require files in the same directory

p __FILE__ # outputs the full path of the current file
p __dir__ # outputs the directory of the current file


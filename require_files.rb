# Rails takes heavy advantage of auto loading
# loads the file immediately as soon as the 'require' command runs
# can lead to loading a lot of files
# if you 'require' say 100 gems, you don't actually want to load every file that these gems define
# and maybe we don't need them all

# $LOAD_PATH is an array of directories that Ruby will search for files to load
# LOAD_PATH loads in order
# $LOAD_PATH << "lib" # adds the "lib" directory to the load path - lib path is inferred

# we can also pre-pend the load path to load required files faster
# $LOAD_PATH.unshift "lib" # adds the "lib" directory to the front of the load path - lib path is inferred
# $LOAD_PATH.unshift File.expand_path("../lib", __FILE__) # adds the "lib" directory to the front of the load path - lib path is inferred
# $LOAD_PATH.unshift File.expand_path("../lib", __dir__) # adds the "lib" directory to the front of the load path - lib path is inferred
# p __FILE__ # outputs the full path of the current file
# p __dir__ # outputs the directory of the current file

# puts $LOAD_PATH # adds a line break after each entry
p $LOAD_PATH # outputs the entire array on one line
# print $LOAD_PATH # outputs the entire array on one line
# require "another" # loads the file immediately when lib is in the load path

# require "./lib/another" # Absolute path when lib is not in the load path - typically explicit requires are not used
require_relative "lib/another" # Relative path when lib is not in the load path - typically explicit requires are not used



# other notes
# Breakdown of $LOAD_PATH.unshift File.expand_path("../lib", __FILE__):
# $LOAD_PATH:

# $LOAD_PATH is a global variable in Ruby that holds an array of directories where Ruby looks for files when you use require or require_relative.
# By default, it includes standard library paths and other directories relevant to your Ruby environment.
# File.expand_path("../lib", __FILE__):

# __FILE__: This is a special variable in Ruby that contains the full path of the current file (in this case, require_files.rb).
# "../lib": This specifies the relative path to the lib directory from the current file's location.
# File.expand_path: This method converts the relative path ("../lib") into an absolute path based on the location of the current file (__FILE__).
# For example, if the current file is require_files.rb, then File.expand_path("../lib", __FILE__) will resolve to lib.
# $LOAD_PATH.unshift:

# The unshift method adds the resolved lib directory path to the beginning of the $LOAD_PATH array.
# Adding it to the beginning ensures that Ruby will search the lib directory first when looking for files to load.
# Why Use $LOAD_PATH.unshift File.expand_path("../lib", __FILE__)?
# Convenience: It allows you to require files from the lib directory without specifying the full or relative path.
# For example, instead of writing require "./lib/another", you can simply write require "another".
# Performance: By prepending the lib directory to the $LOAD_PATH, Ruby will search it first, potentially reducing the time spent searching for files.
# Portability: Using File.expand_path ensures that the path is resolved correctly regardless of where the script is executed.
# Example:
# Assume the following directory structure:
# /Users/rahulshial/Projects/learning-and-development/
# ├── require_files.rb
# ├── lib/
# │   └── another.rb

# Code in require_files.rb:
# $LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

# # Now you can require files from the `lib` directory without specifying the full path
# require "another"




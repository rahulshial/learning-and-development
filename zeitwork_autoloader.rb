require "zeitwerk"
loader = Zeitwerk::Loader.new
loader.push_dir("concerns")
# loader.push_dir("any other directory")
loader.setup # ready!
# loader.eager_load # loads all files in the directory

Authentication # zeitwerk is intelligent enough to convert this constant to the file path

# This is a behind the scenes autoloading mechanism
# also has a reloader mechanism

# https://github.com/fxn/zeitwerk
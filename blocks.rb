def benchmark
  start_time = Time.now
  puts "before yield"
  results = yield
  puts "after yield"
  end_time = Time.now
  puts "Time elapsed #{end_time - start_time} seconds and returned #{results}"
end

# passing a code block to a method
# both the methods do the same thing
puts
puts "----------------"
puts "benchmark #1"
benchmark { sleep 1 }

puts
puts "----------------"
puts "benchmark #2"
benchmark() do
  sleep 1
end

def benchmark2(code)
  start_time = Time.now
  # does not highlight any syntax errors until you run the code
  eval code
  end_time = Time.now
  puts "Time elapsed #{end_time - start_time} seconds"
end

puts
puts "----------------"
puts "benchmark2 #1"
benchmark2("sleep 1")

def benchmark3
  start_time = Time.now
  # you can also pass the start time to yield
  results = yield(start_time)
  end_time = Time.now
end

# when the method sends the start time to the block. this param is optional
puts
puts "----------------"
puts "benchmark3 #1"
benchmark3 { |start_time| sleep 1 }

puts
puts "----------------"
puts "benchmark3 #2"
benchmark3 do |start_time|
  puts "inside the block: start time is #{start_time}"
  sleep 1
end

def benchmark4
  start_time = Time.now
  # check if block is provided
  # helpful if blocks are optional - later on discussed using rails example
  if block_given?
  results = yield
  else
    results = "no block given"
  end
  end_time = Time.now
  puts "Time elapsed #{end_time - start_time} seconds and returned #{results}"
end

# when no block is provided
puts
puts "----------------"
puts "benchmark4 #3 - without block"
benchmark4()
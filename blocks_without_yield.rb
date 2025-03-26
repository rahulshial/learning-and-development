def calculate(x, y, &block)
  # instead of yield, we can use block.call and the block variable can be passed around whereas yield cannot be passed around
  puts block.call(x, y)
end

calculate(2, 3) do |x, y|
  x * y
end
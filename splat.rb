#  the *args converts an infinite of arguments into an array or any type
#  the *args must be the last argument in the method definition

def a(*args)
  p args
end

# a
# a(1)
# a('test','test')
# a('test', hash: :hello)
# a(hash: :hello)

# the **options converts an infinite of arguments into a hash
# the ** will work only with has values 
# if **options is used, it should be the last argument, and if provided it should be hash values
def b(**options)
  p options
end

b
# b(1)
# b('test','test')
# b('test', hash: :hello)
b(hash: :hello)

def c(a, b, *args, **options)
  p a, b, args, options

end

c(1, 2, 3, 4)
c(1, 2, 3, 4, hash: :hello)

def div(content, **options)
  attributes = options.map{ |k, v| "#{k}='#{v}'"}.join(' ')
  "<div #{attributes}>#{content}</div>"
end

p div('hello')
p div('hello', id: 'my_id', class: 'my_class')
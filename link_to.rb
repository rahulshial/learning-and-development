def link_to(title, url)
  "<a href='#{url}'>#{title}</a>"
end

puts link_to("Google", "http://www.google.com") # => "<a href='http://www.google.com'>Google</a>"

# similar to the benchmark method, the link_to method can take a block
def link_to2(title, url=nil)
  if block_given?
    url = title
    title = yield
  else
    url = title
    title = "no title block given"
  end
  "<a href='#{url}'>#{title}</a>"
end

link = link_to2("http://www.timesofindia.com") {"Times of India"}
puts link # => "<a href='http://www.timesofindia.com'>Times of India</a>"
 
link = link_to2("http://www.timesofindia.com")
puts link # => "<a href=''>Times of India</a>"

# this is helpful since we can have other methods to be included in the block

def div(content)
  "<div>#{content}</div>"
end

link = link_to2("http://www.yahoo.com") {div "Yahoo"}
puts link # => "<a href='<div>Breaking News</div>'>Times of India</a>"
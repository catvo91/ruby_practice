def foo
  f = Proc.new { return "return from foo from inside proc" }
  f.call # control leaves foo here
  return "return from foo" 
end

def bar
  b = Proc.new { "return from bar from inside proc" }
  b.call # control leaves bar here
  return "return from bar" # this i
end

puts foo # prints "return from foo from inside proc" 
puts bar # prints "return from bar" 
# write a method that takes a block and calls it once for each hour that has passed.
# method 1 with proc -> method -> call proc with method

chime = Proc.new do # proc
  puts 'Dong'
end

def grandFatherClock block #method
  hour = Time.now.hour
  if hour > 12
    hour = hour - 12
  end
  hour.times do
    block.call
  end
end

grandFatherClock chime

# method 2 method -> call block 

def grandFatherClock &block #method
  hour = Time.now.hour
  if hour > 12
    hour = hour - 12
  end
  hour.times do
    block.call
  end
end

grandFatherClock do
	puts 'Dong'
end



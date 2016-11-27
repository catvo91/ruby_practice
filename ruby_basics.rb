clock = Proc.new do # so this is called a proc (which is an object). a block is the code between do and end
  puts 'Dong'
end

clock.call 

def chime someProc # this is called a method that you feed procs. the term proc here can be named arbitrarily anything
  someProc.call
end

chime clock


1.times do  # a basic block. notice this doesnt need a call.
  puts 'hi'
end

3.times do
  puts 'Hip-Hip-Hooray!'
end
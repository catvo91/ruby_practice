# goal was to create a program that took any input of words and sorted them without using .sort.
# as a bonus, can sort integers if you hadd .to_i after gets.chomp

def sort(a)
i = 0
	while i < a.length
		n = 0
		while n < (a.length - 1)
			if a[n] > a[n + 1] 
				a[n], a[n + 1] = a[n + 1], a[n]
				n += 1 
			else
				n += 1
			end
		end
		i += 1
	end
	puts a.to_s + ' final sort'
end



inputArray = []
input = gets.chomp
inputArray << input
while input != ''
	input = gets.chomp
	inputArray << input
end
sort(inputArray)




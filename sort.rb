inputArray = []
input = gets.chomp
inputArray << input
while input != ''
	input = gets.chomp
	inputArray << input
end
puts inputArray.sort.to_s

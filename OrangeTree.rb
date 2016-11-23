#make an orange tree with fun stuff

class OrangeTree
	def initialize(height, age, name)
		@height = height
		@age = age
		@name = name
		@fruitPer = 0
		@currentFruit = @fruitPer
	end
	def stats
		puts @name + ' is ' + @height.to_s + ' feet tall and ' + @age.to_s + ' years old.'
	end
	def oneYearPasses
		@age += 1
		@height += 3
		if @age >= 5
			@fruitPer += 2
			@currentFruit = @fruitPer
			puts @name + ' bears fruit! ' + @fruitPer.to_s + ' per season!'
		end
		if @age > 25
			puts @name + ' is ' + @age.to_s + ' and dies. Sorry.'
			exit
		end
	end
	def pickFruit
		if @currentFruit > 0
			@currentFruit -	= 1
			puts 'You pick a fruit. Yum. It\'s pretty sweet. I guess. There are ' + @currentFruit.to_s + ' left.'
		else
			puts 'There are no fruit to pick right now. Try again next season.'
		end
	end
end

shelly = OrangeTree.new(5, 3, 'Shelly')
puts shelly.stats
shelly.oneYearPasses
puts shelly.stats
shelly.oneYearPasses
puts shelly.stats
shelly.oneYearPasses
puts shelly.stats
shelly.pickFruit
shelly.pickFruit
shelly.pickFruit
shelly.pickFruit
shelly.pickFruit
#second version after realizing it'd be easier to store a constantly updated answer string
# currently only works for numbers 1-10million kthx
def toEnglish(n)
	onesString = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	teensString = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
	tensString = ['twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	
	number = n

	write = number / 1000000
	onesMillions = write
	puts onesMillions.to_s + ' ones million'
	number = number - write * 1000000
	puts number.to_s + ' number value after subtraction ones millions'

	write = number / 100000
	hundredsThousands = write 
	puts hundredsThousands.to_s + ' hundreds thousands'
	number = number - write * 100000
	puts number.to_s + ' number value after subtraction hundreds thousands'

	write = number / 10000
	tensThousands = write 
	puts tensThousands.to_s + ' tens thousands'
	number = number - write * 10000
	puts number.to_s + ' number value after subtraction tens thousands'

	write = number / 1000
	thousands =  write 
	puts thousands.to_s + ' thousands'
	number = number - write * 1000

	write = number / 100 
	puts write.to_s + ' write value for hundreds'
	hundreds = write
	number = number - write * 100 
	write = number / 10 
	puts write.to_s + ' write tens'
	tens = write
	number = number - write * 10
	puts number.to_s + ' number tens'
	ones = number
	puts ones.to_s + ' ones!'

	answer = ''

	if onesMillions >= 1
		answer = answer + onesString[onesMillions - 1].to_s + ' million and '
	end

	if hundredsThousands >= 1 
		answer = answer + onesString[hundredsThousands - 1].to_s + ' hundred thousand and '
	end

	if tensThousands == 1
		answer = answer + teensString[thousands].to_s + ' thousand'
	elsif tensThousands >= 2
		answer = answer + tensString[tensThousands - 2].to_s
	end	

	if thousands >= 1
		answer = answer + onesString[thousands - 1].to_s + ' thousand and '
		if tens == 0 && ones == 0
			delete = answer.rindex('thousand')
			answer.slice!(delete..(delete + 8))
		end
	end

	if hundreds >= 1 
		answer = answer + onesString[hundreds - 1].to_s + ' hundred and'
	end

	if tens == 1 
		answer = answer + ' ' + teensString[ones].to_s
	elsif tens >= 2
		answer = answer + ' ' + tensString[tens - 2] + '-' + onesString[ones - 1]
	elsif tens == 0 && ones > 0
		answer = answer + ' ' + onesString[ones - 1].to_s
	elsif tens == 0 && ones == 0
		answer = answer + ' zero'
	end
	puts answer
end

puts 'Please pick a number from 1 - 10 million and type it numerically'

n = gets.chomp.to_i
	if n <= 0
		puts 'ONE OR GREATER PLEASE'
	elsif n > 10000000
		puts 'LESS THAN TEN MILLION PLEASE'
	end

toEnglish(n)





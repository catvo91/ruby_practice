# it's telling me to use this program to write a lovely song.
def toEnglish(n)
	onesString = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	teensString = ['ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
	tensString = ['twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	
	number = n

	write = number / 1000000
	onesMillions = write
	number = number - write * 1000000

	write = number / 100000
	hundredsThousands = write 
	number = number - write * 100000

	write = number / 10000
	tensThousands = write 
	number = number - write * 10000

	write = number / 1000
	thousands =  write 
	number = number - write * 1000

	write = number / 100 
	hundreds = write
	number = number - write * 100 
	write = number / 10 
	tens = write
	number = number - write * 10
	ones = number

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
	return answer
end
	
def bottlesOfBeer(n)
	while n >= 1
		puts toEnglish(n) + ' bottles of beer on the wall. Blah blah! Passing stuff! '
		n = n - 1
		puts toEnglish(n) + ' bottles of beer on the wall! '
	end
end

bottlesOfBeer(9999)




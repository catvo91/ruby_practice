# a fun program with a virtual loving grammy
input = ''
while input != 'BYE BYE BYE'
	input = gets.chomp
	if input != input.upcase
		puts 'HUH?! SPEAK UP SONNY!'
	elsif input == 'BYE'
		puts 'I\'M PRETENDING NOT TO HEAR YOU!'
	elsif input == input.upcase and input != 'BYE BYE BYE'
		puts 'NO, NOT SINCE ' + (1930 + rand(20)).to_s + '!'
	end
end
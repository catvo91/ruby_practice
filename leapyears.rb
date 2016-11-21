# a program to calculate which years are leap years given a time period

puts "Please enter starting year:"
startYear = gets.chomp.to_i
puts "Please enter ending year:"
endYear = gets.chomp.to_i

currentYear = startYear
leapYears = []
while (currentYear <= endYear)
 if (currentYear % 4 == 0 && (currentYear % 100 != 0 || currentYear % 400 == 0))
   leapYears << currentYear
   currentYear += 4
 else
   currentYear += 1
 end
end

print leapYears
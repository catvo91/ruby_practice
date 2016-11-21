# goal : to make a program that converts integers to english numbers
# my complicated first draft. realized embedding methods probably wasnt the way to go


def toEnglish(n)
  hundredsString = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  number = n
  write = number / 100 # write is the part we are writing right now
  puts write.to_s + ' write hundreds'
  hundreds = write
  puts hundreds.to_s + ' hundreds hundreds'
  number = number - write * 100 #subtract the hundreds. left with tens
  puts number.to_s + ' number hundreds'

  write = number / 10 #remember shit rounds down in programming
  puts write.to_s + ' write tens'
  tens = write
  number = number - write * 10
  puts number.to_s + ' number tens'
  ones = number

  def tensMethod(tens, ones)
  onesString = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  tensString = ['twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
    if tens == 0
      return onesString[ones - 1]
    elsif tens == 1 
      return teens[ones - 1]
    elsif tens >= 2
      return tensString[tens - 2] + '-' + onesString[ones - 1]
    end
  end

  if hundreds == 0 
    return tensMethod(tens, ones)
  end
  if hundreds >= 1 
        puts hundredsString[hundreds - 1].to_s + ' hundred ' + tensMethod(tens, ones).to_s
  end

end

toEnglish(789)
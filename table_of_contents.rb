# table of contents method
lineWidth = 35
title = ['Table of Contents']
chapters = ['Chapter 1: Numbers', 'Chapter 2: Letters', 'Chapter 3: Variables']
pages = ['page 1', 'page 72', 'page 118']
n = 0

puts title[0].center(lineWidth)
while n < chapters.length
	puts chapters[n].ljust(lineWidth) + pages[n].rjust(lineWidth)
	n += 1
end

# can be modified easily for additional chapters, pages, and titles
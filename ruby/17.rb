numbers = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety", 100 => "onehundred", 200 => "twohundred", 300 => "threehundred", 400 => "fourhundred", 500 => "fivehundred", 600 => "sixhundred", 700 => "sevenhundred", 800 => "eighthundred", 900 => "ninehundred", 1000 => "onethousand"}

total = (1..1000).inject(0) do |acc, n|
	print "#{n}: "
	to_add = 0
	if(!(str = numbers[n]).nil?)
		to_add = str.size
	else
		ones = n % 10
		tens = (n-ones) % 100
		hundreds = n/100
		if(tens == 10)
			to_add += numbers[n % 100].size
		else
			to_add += numbers[ones].size unless ones == 0
			to_add += numbers[tens].size unless tens == 0
		end
		to_add += numbers[hundreds*100].size + 3 unless hundreds == 0	
	end

	puts to_add
	acc += to_add
end

puts total

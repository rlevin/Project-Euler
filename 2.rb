def fib(n)
	if(n == 0)
		1
	elsif(n == 1)
		2
	else
		fib(n-2) + fib(n-1)
	end
end

def is_even(n)
	if(n % 2 == 0)
		true
	else
		false
	end
end

def solve
	total = 0
	(1..31).each do |n|
		f = fib(n)
		if(is_even(f))
			total += f
		end
	end
	puts total
end

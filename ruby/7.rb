class Integer
	def is_prime?
		is_prime = true
		stop = Math.sqrt(self).floor
		for i in (2..stop)
			if(self % i == 0)
				is_prime = false
				break
			end
		end
		is_prime
	end
end

def solve
	count = 1
	i = 3
	while(count < 10001)
		if(i.is_prime?)
			count += 1
		end
		i += 2
	end
	puts i-2
end

solve

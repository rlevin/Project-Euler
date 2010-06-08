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
	(2..1999999).inject(0) {|acc,i| acc += i.is_prime? ? i : 0 }
end

puts solve

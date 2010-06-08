class Integer
	def factorial
		return 1 if self == 0
		self * (self-1).factorial
	end
end

def solve(n)
	value = n.factorial
	value.to_s.split('').inject(0) { |acc, d| acc += d.to_i }
end

puts solve(100)

class Integer
	def palindrome?
		str = self.to_s
		rev = str.reverse
		rev == str
	end
end

def solve
	product = 0
	for i in 100..999 do
		for j in 100..999	do
			candidate = i * j
			if (candidate > product && candidate.palindrome?)
				product = candidate
			end
		end
	end
	puts product
end


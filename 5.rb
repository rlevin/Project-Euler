class Integer
	def divisible_by?(n)
		self % n == 0
	end
end

def solve
	candidate = 2520
	divisible = false
	while(!divisible)
		puts candidate
		for i in 11..20 do
			if(!candidate.divisible_by?(i))
				break
			end		
		end
		if(i == 20)
			divisible = true
		else
			candidate += 20
		end
		candidate
	end
end

puts solve

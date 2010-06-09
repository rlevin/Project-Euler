class Integer
	def num_divisors
		count = 0
		for i in (1..Math.sqrt(self))
			if(self%i == 0)
				count += 1
			end
		end
		count *= 2
	end
end

def solve
	current_tri_number = 1
	current_tri_number_index = 1
	while(current_tri_number.num_divisors <= 500)
		current_tri_number_index += 1
		current_tri_number += current_tri_number_index
	end
	puts "Answer: #{current_tri_number}"
end

solve

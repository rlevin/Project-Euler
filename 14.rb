def next_in_seq(current)
	if(current%2 == 0)
		current/2
	else
		(3 * current) + 1
	end
end

def solve
	max_length = 0
	best_start_num = 0
	for i in (1..1000000)
		start_num = current = i
		length = 1
		while(current != 1)
			current = next_in_seq(current)
			length += 1
		end
		max_length, best_start_num = length, start_num unless length <= max_length
	end
	puts best_start_num
end

solve

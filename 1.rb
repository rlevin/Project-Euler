def find_multiples_for_root(root, limit)
	multiplier = 1
	multiples = Array.new
	while((multiple = root * multiplier) < limit)
		multiples << multiple
		multiplier += 1
	end
	multiples
end

def solve
	roots = [3,5]
	root_multiples = Array.new

	roots.each do |r|
		root_multiples << find_multiples_for_root(r, 1000)
	end
	
	sum = root_multiples[0] + root_multiples[1]
	intersection = root_multiples[0] & root_multiples[1]
	
	final = 0
	sum.each do |m|
		final += m
	end

	intersection.each do |m|
		final -= m
	end

	p final
end

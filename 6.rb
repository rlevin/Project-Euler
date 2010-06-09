def function_sum(n, &block)
	(1..n).inject(0) { |acc, i| acc += yield i }
end

def solve
	sum = function_sum(100) { |i| i }
	square_of_the_sum = sum * sum
	sum_of_squares = function_sum(100) { |i| i * i }
	puts square_of_the_sum - sum_of_squares
end

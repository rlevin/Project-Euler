def fact(n)
	return 1 if n <= 1
	n * fact(n-1)
end

# 40 choose 20

puts fact(40)/(fact(20)**2)

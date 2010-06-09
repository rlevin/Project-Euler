for m in 1..22
	for n in (m+1)..23
		if(n * (n+m) == 500)
			n2 = n*n
			m2 = m*m
			a = n2-m2
			b = 2*m*n
			c = n2+m2
			puts "abc: #{a*b*c}"
			break
		end
	end
end

(defn fib [n]
	(if (= n 0)
		1
		(if (= n 1)
			2
			(+ (fib (- n 2)) (fib (- n 1))))))

(defn to-add [n]
	(if (= 0 (rem n 2))
		n
		0))

(defn solve [total current end]
	(if (= current end)
		total
		(recur (+ total (to-add(fib current))) (+ 1 current) end)))

(println (solve 0 0 32))

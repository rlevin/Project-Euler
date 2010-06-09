(defn is-mult? [num mult]
	(= 0 (rem num mult)))

(defn to-add [num]
	(if (or (is-mult? num 3) (is-mult? num 5))
		num
		0))

(defn solve [total current end]
	(if (= current end)
		total
		(recur (+ total (to-add current)) (+ 1 current) end)))

(println (solve 0 1 1000))

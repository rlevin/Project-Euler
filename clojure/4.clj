(defn palindrome? [n]
	(let [rev (reverse (str n))])
	(= rev (reverse rev))) 


(defn solve
	(loop [x 100]
		(loop [y 100]
			if()))

;(range 100 1000)

(println (palindrome? 201))

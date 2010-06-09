(defn sum-of-squares[n]
	(/ (* (+ (* 2 n) 1) (* n (+ n 1))) 6))

(defn square-of-sum [n]
	(let [x (/ (* n (+ n 1)) 2)]
		(* x x)))

(println (- (square-of-sum 100) (sum-of-squares 100)))

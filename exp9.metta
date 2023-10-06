(> 4 (+ ln 2))

(> 5 (+ ln 2))

(= (bin) 0)
(= (bin) 1)
!(assertEqualToResult
  (+ 1 (bin))
  (1 2))

!(+ 1 (bin))

(= (fact $n) (if (== $n 0) 1 (* (fact (- $n 1)) $n)))
!(fact 10)

; Can you write this recurssive function in one line

(= (gen $n)
   (if (> $n 0)
       (:: (bin) (gen (- $n 1)))
       nil))

!(gen 2)

; Can you write a program that can generate strings of all lengths from 0 to $n

(= (subsum nil nil) 0)
(= (subsum (:: $x $xs) (:: $b $bs))
   (+ (* $x $b)
      (subsum $xs $bs)))

!(subsum (:: 2 (:: 3 nil)) (:: 9 (:: 4 nil)))
!(subsum nil nil)

!(let $t (gen 3)
    (if (== (subsum (:: 3 (:: 7 (:: 5 nil))) $t) 8) $t (superpose ())))





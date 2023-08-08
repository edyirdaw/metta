; !($a 6)

; !($a)

; !(+ 4 5)

; !(16  (+ 7 19) )

(a b c)

;This is printed a bit different than expected
(= ($var) (x y z))

(r t)

($a 4)

($a 5)

($b +(4 5) ) ; doens't show b=9

!(match &self $print $print)

; Why these dont' print the value of $a
; !(match &self $a $a)
; !(match &self $a $a)

; Doesn't work
; (call:remove_atom &self ($a) )

;(match &self (a b c)
 ;  (call:remove_atom &self ($var1)))

(call:add (5 4))

!(match &self $print $print)


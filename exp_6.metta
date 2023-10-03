(= (color) green)
(= (color) yellow)
(= (color) red)
;(= (color) boo)

!(match &self (= (color) $x) $x)

!(superpose (red yellow green))

!(let $x (collapse (color)) (superpose $x))
!(let $x red $x)
!(let* (($x red) ($y yellow)) ($x $y))

!(collapse (shape))

(= (foo) red)
;(= (foo) yellow)
(= (foo) boo)
(= (eq $x $x) T)
(= (find-equal $x $y)
   (match &self (= (eq $x $y) T) $x))
(= (find-equal' $x $y)
   (= (eq $x $y) T) )


!(find-equal (color) (foo))
!(find-equal' (color) (foo))

!(get-type (color))
!(get-type (colorss))

!(get-type Nil)
!(get-type List)
!(get-type Type)
!(get-type car-atom)
!(get-type 5)
!(get-type Number)

(: a T)

(= (aa) r)
!( (aa) )





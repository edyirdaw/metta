

(: curry (-> (-> $a $b $c) (-> $a (-> $b $c))))

(= (((curry $f) $x) $y) ($f $x $y))

!(get-type +)

!(get-type (curry +))

(: curry2 (-> (-> $a $b $c) (-> $a (-> $b $c))))

(= (curry2 ($f $x $y)) ($f $x $y))

!(get-type (curry2 +))

(: curry3 (-> (-> $a $b $c) (-> $a (-> $b $c))))

(= (curry3 $f $x $y) ($f $x $y))

!(get-type (curry3 +))

!(get-type True)

!(case True ((True 1) (False 0) ($1 2)) )

;Me thinks you gettin metta cos u were able to flexibly use pattern matching in cases below, pun intended.

!(case Both ((True 1) (False 0) ($1 2)) )

!(case $any ((True 1) (False 0) ($1 2)) )


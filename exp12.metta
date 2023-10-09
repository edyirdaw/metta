

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


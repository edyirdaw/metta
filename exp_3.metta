


hey
(hey)


(implies (Frog $x) (Green $x))
(implies (Frog $x) (Eats-flies $x))


!(match &self (implies (Frog Sam) $what) $what)



(hey you)
(lay hey)
(hey bay)
(say hey bay)


!(match &self (, ($x you) (lay $x) ($y $x bay) ) $x)


(:= (I $x) $x)
(:= ((K $x) $y) $x)
(:= (K $x $y) $x)
(:= (S $x $y $z) ($x $z ($y $z)))

!(match &self
    (:= (S K K x) $r)
    $r)

!(match &self (:= $r $r2)
      $r2)

!(match &self
    (:= (S K K x) $r)
     (match &self (:= $r $r2)
      $r2))

!(match &self ($x hey)
       (match &self ($x $y)
         (match &self ($z $y) $z )))

(= (I $x) $x)
(= ((K $x) $y) $x) ; Note that `(K $x)` is allowed here
(= (K $x $y) $x)
(= (S $x $y $z) ($x $z ($y $z)))

(= (Add $x Z) $x)
;(= (Add $x (S $y)) (Add (S $x) $y))

;!(Add $x Z)
!(Add (S Y) Z )

;!(assertEqual
 ; (Add (S Z) (S Z))
  ;(S (S Z)))

!(S K K x)

!(match &self $print $print)



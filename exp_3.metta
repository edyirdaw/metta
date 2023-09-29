


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

(Frog Sam)
;(Frog Las)
(= (frog $x) (match &self (Frog $x) T))
; `(Frog Sam)` is not reduced; it is just a declaration
!(assertEqualToResult
   (Frog Sam)
  ((Frog Sam)))

!(assertEqualToResult
   (mm)
  ((mm)))

!(Frog Sam)
!((Frog Sam))

; `frog` uses this declaration
!(frog Sam)
!(frog Fritz)
!(frog Las)

; Some facts in the knowledge base
(Evaluation (philosopher Plato))
(Evaluation (likes-to-wrestle Plato))

; An implication rule
(Implication
   (And (Evaluation (philosopher $x))
        (Evaluation (likes-to-wrestle $x)))
   (Evaluation (human $x)))

; Another implication rule
(Implication
   (Evaluation (human $x))
   (Evaluation (mortal $x)))

; Deduction case when the desired evaluation is present in
; the knowledge base
(= (deduce (Evaluation ($P $x)))
   (match &self (Evaluation ($P $x)) T))

; Deduction case when the desired evaluation is the result
; of an implication, which implies a recursion
(= (deduce (Evaluation ($P $x)))
   (match &self
     (Implication $a (Evaluation ($P $x)))
     (deduce $a)))

; Deduction case for generic "And" expressions;
; also recursive
(= (deduce (And $a $b))
   (And (deduce $a) (deduce $b)))

; True & True = True
(= (And T T) T)

; Test deduction that Plato is mortal

!(deduce (Evaluation (mortal Plato)))
!(Evaluation (mortal Plato))

((a b) c)
!(match &self ($x  c) $x)

;!(match &self $print $print)



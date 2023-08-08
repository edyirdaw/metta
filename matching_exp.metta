
(a b c)

(a d)

(a f)

; The syntax for matching is, it takes to arguments. The first one is the pattern to search for, the second argument
; is a variable which you would like to get returned (an iterator i think)

!(match &self (a $m) ($m) )

!(match &self (a $m1 $m2) ($m1 $m2) )

!(match &self (a $m1 $m2) $m1 )

!(match &self (a $m1 $m2) ($m1) )

!(match &self $print $print)




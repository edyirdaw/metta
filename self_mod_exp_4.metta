
(= (remove-state $var)
               (match &self (state $var $y)
                  (remove-atom &self (state $var $y))))
(= (change-state $var $value)
               (, (remove-state $var)
                  (add-atom &self (state $var $value))))
(= (get-state $var)
               (match &self (state $var $value) $value))

(name id-002)

!(match &self $print $print)

; This doesn't seem to work. I think change-state it has been defined as a lang extension in python
;(remove-atom (name id-001) Fritz)

(new-state a)
;(new-state1 &self)

; (change-state! (name id-001) Fritz)

!(match &self $print $print)


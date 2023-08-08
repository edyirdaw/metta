(= (remove-state $var)
               (match &self (state $var $y)
                  (call:remove_atom &self (state $var $y))))
            (= (change-state $var $value)
               (, (remove-state $var)
                  (call:add_atom &self (state $var $value))))
            (= (get-state $var)
               (match &self (state $var $value) $value))

(a)

!(match &self $print $print)

; (change-state (name id-001) Fritz)

; (get-state (name id-001))

; Works somehow
;(match &self $var (a))

;(match &self $var (a) (call:remove_atom &self $var (a)))
(match &self $var a (remove_atom ))

!(match &self $print $print)
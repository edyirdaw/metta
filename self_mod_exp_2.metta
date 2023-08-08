(= (remove-state $var)
               (match &self (state $var $y)
                  (call:remove_atom &self (state $var $y))))
            (= (change-state $var $value)
               (, (remove-state $var)
                  (call:add_atom &self (state $var $value))))
            (= (get-state $var)
               (match &self (state $var $value) $value))

(a)

b

!(match &self $print $print)


(change-state (name id-001) Fritz)
; (get-state (name id-001) Fritz)

; !(get-state (name id-001))
; (get-state (name id-001))

; !(get-state $self (name id-001))

(remove-atom &self (match &self $varvar (a) )  )

; ! (match &self $varvar (a) )

!(match &self $print $print)

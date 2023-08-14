(= (remove_state $var)
               (match &self (state $var $y)
                  (remove-atom &self (state $var $y))))
(= (change_state $var $value)
               (,    (add-atom &self (state $var $value)) (remove_state $var)  ))

;(= (change_state $var $value)
;               ( (add-atom &self (state $var $value))  ))

(= (get_state $var)
               (match &self (state $var $value) $value))

(state (name id-001) Doh)

!(get_state (name id-001))

;!(remove_state (name id-001))

;!(match &self $print $print)

!(change_state (name id-001) Fritz)

!(get_state (name id-001))

!(match &self $print $print)

(= (remove-state $var)
               (match &self (state $var $y)
                  (call:remove_atom &self (state $var $y))))
(= (change-state $var $value)
               (, (remove-state $var)
                  (call:add_atom &self (state $var $value))))
(= (get-state $var)
               (match &self (state $var $value) $value))


!(match &self $print $print)

; This doesn't seem to work. I think change-state it has been defined as a lang extension in python
(change-state (name id-001) Fritz)

!(match &self $print $print)
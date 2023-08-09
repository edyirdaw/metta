
(= (remove-state $var)
               (match &self (state $var $y)
                  (call:remove_atom &self (state $var $y))))
(= (change-state $var $value)
               (, (remove-state $var)
                  (call:add_atom &self (state $var $value))))
(= (get-state $var)
               (match &self (state $var $value) $value))


!(match &self $print $print)
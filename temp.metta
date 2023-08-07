(= (remove-state $var)
               (match &self (state $var $y)
                  (call:remove_atom &self (state $var $y))))
                  
                  
                  
(= (get-state $var)
              (match &self (state $var $value) $value))
               
               
(= (if True $then) $then)
(= (croaks Fritz) True)
(if (croaks $x) $x)

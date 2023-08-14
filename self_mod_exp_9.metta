

(= (fun_1) ((blah_1) (blah_2)))

(= (blah_1) (blah_3))

;This is basically inplace code mod, but the replacement obviously needs to be invoked via such as the code below.
;This as long as the entity expected to be modified is named. Possibly all operation might need to be named.
!(fun_1)

!(match &self $print $print)

;!(add-atom &self ((= (fun_2) ((blue_1) (blue_2)))))
!(add-atom &self (= (fun_1) (fun_2)))

!(add-atom &self (= (blah_3) (blah_4)))

!(match &self $print $print)

; (= (fun_1) (fun_2))

!(fun_1)

;This doesn't seem to work
!(remove-atom &self (fun_2))

;I think this doesn't seem to work, but who cares for now
!(remove-atom &self (= (fun_2) (fun_2)))

!(fun_1)

!(match &self $print $print)



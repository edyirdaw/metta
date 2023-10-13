!(import! &s1 a.metta)
!(import! &s2 b.metta)

!(bind! &s (new-space))

(= (add_atoms $sink_space $source_space)
   (match $source_space $atom (add-atom $sink_space $atom)
   )
)

;!(match &s1 $atom (add-atom &s $atom))
;!(match &s2 $atom (add-atom &s $atom))

!(add_atoms &s &s1)
;!(add-atom &s &s)
!(add_atoms &s &s2)

!(match &s $atom $atom)
!(add_atoms &self &s)

; Outputs error in self
!(match &self $atom $atom)


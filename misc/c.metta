!(import! &s1 a.metta)
!(import! &s2 b.metta)

!(match &s1 $1 $1)
!(match &s2 $1 $1)

!(bind! &s (new-space))


(= (add_atoms $sink_space $source_space)
   (match $source_space $atom (add-atom $sink_space $atom)
   )
)

!(add_atoms &s &s1)
!(add_atoms &s &s2)

;!(match &s1 $atom (add-atom &s $atom))
;!(match &s2 $atom (add-atom &s $atom))

;!(match &s1 $atom (add-atom &self $atom))
;!(match &s2 $atom (add-atom &self $atom))

!(match &s $atom $atom)

!(add_atoms &self &s)

!(match &self $atom $atom)


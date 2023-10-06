
!(import! &kb exp10.metta)

!(match &kb
    (, ($obj is $prop)
       ($prop is-a Color)
       ($obj is-a Planet))
    (Color of Planet $obj is $prop))


!(bind! &state-token (new-state (A B)))

!(&state-token)

!(nop !(&state-token))

!(add-atom &self &state-token)

!(get-state &state-token)

!(nop (change-state! &state-token (C D)))

!(change-state! &state-token (C D))

; !(change-state! (new-state 1) "S"))

; !(nop(change-state! (new-state 1) "S"))

; !(get-state (let $x (new-state 1) $x))

!(get-state &state-token)

!(match &self $1 $1)
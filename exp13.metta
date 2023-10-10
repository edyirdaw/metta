
!(bind! &state-token (new-state (A B)))

!(&state-token)

!(nop !(&state-token))

!(add-atom &self &state-token)

!(get-state &state-token)

!(nop (change-state! &state-token (C D)))

!(change-state! &state-token (C D))

!(match &self $1 $1)
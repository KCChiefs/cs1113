module Bit

data Bit = one | zero
change: Bit -> Bit
change one = zero
change zero = one 

id: Bit -> Bit
id one = one
id zero = zero




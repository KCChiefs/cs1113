module ite1

import bool

ite: bool -> a -> a -> a
ite true tb fb = tb
ite false tb fb = fb

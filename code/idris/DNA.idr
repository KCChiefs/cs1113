module DNA

import list
import pair
import nat

data base = A | T | C | G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

complement_strand: list base -> list base 
complement_strand nil = nil
complement_strand b = Map complement_base b


strand1: list (pair base base) -> list base
strand1 nil = nil
strand1 ((mkPair a b)::t) = a::(strand1 t)

strand2: list (pair base base) -> list base
strand2 nil = nil
strand2 ((mkPair a b)::t) = b::(strand2 t)


lawl: base -> (pair base base)
lawl b = (mkPair b (complement_base b))

complete: list base -> list (pair base base)
complete a = Map lawl a


count: base -> base -> Nat
count A A = 1
count T T = 1
count G G = 1
count C C = 1
count _ _ = 0

countBase: list base -> base -> Nat
countBase nil _ = 0
countBase (h::t) b = list.foldr plus 0 (Map (count b) (h::t))
 
 

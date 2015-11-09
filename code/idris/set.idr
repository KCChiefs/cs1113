module set

import list
import ite1
import bool
import eq
import Serialize

|||mkSet is meant to be private
data set a = mkSet (list a)

new_set: set a
new_set = mkSet nil

set_insert: (eq a) => a -> set a -> set a
set_insert v (mkSet l) = ite (member v l)
                             (mkSet l) 
                             (mkSet (v::l))

subset_elements: (eq a) => list a -> list a -> bool
subset_elements nil nil = true
subset_elements nil (h::t) = true
subset_elements (h::t) nil = false
subset_elements (h::t1) l = and (member h l) (subset_elements t1 l)

same_elements: (eq a) => list a -> list a -> bool 
same_elements t1 t2 = and (subset_elements t1 t2) (subset_elements t2 t1)

eql_set: (eq a) => set a -> set a -> bool
eql_set (mkSet l1) (mkSet l2) = same_elements l1 l2

instance (eq a) => eq (set a) where
  eql s1 s2 = eql_set s1 s2

{-
instance (Serialize a) => Serialize (set a) where
  toString (mkSet l) = "{" ++ (toStringListVal l) ++ "}"
-}

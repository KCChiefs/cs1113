module list

import nat
import bool
import option
import ite1
import eq
import Serialize 

infixr 7 ::,++

data list a = nil | (::) a (list a)

|||return the length of any given list
length: list a -> nat
length nil = O 
length (h::t) = S (length t)

|||append as an infix operator ++
(++): list a -> list a -> list a
(++) nil l2 = l2
(++) (h::t) l2 = h::(t++l2)

|||map a function over the elements of a list
Map: (a -> b) -> list a -> list b
Map f nil = nil
Map f (h::t) = (f h)::(Map f t)


|||given a list and a predicate on elements return the sublist of elements for which the predicate is true
filter: (a -> bool) -> list a -> list a
filter f nil = nil 
filter f (h::t) = ite (f h)
                      (h::(filter f t))
                      (filter f t)


foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)


member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h)
                      true
                      (member v t)

tail: list a -> option (list a)
tail nil = none
tail (h::t) = some t


instance (eq a) => eq (list a) where
  eql nil nil = true
  eql (h::t) nil = false
  eql nil (h::t) = false
  eql (h1::t1) (h2::t2) = and (eql h1 h2) (eql t1 t2)

{-
ALSO WORKS: 
eql_list: (eq a) => list a -> list a -> bool
eql_list nil nil = true
eql_list nil l2 = false
eql_list l1 nil = false
eql_list (h1::t1) (h2::t2) = ite (eql h1 h2) 
                             (eql_list t1 t2)
                             false

instance (eq a) => eq (list a) where
  eql s1 s2 = eql_list s1 s2 
-}

toStringList: (Serialize a) => list a -> String
toStringList nil = ""
toStringList (h::nil) = toString h
toStringList (h::t) = (toString h) ++ "," ++ (toStringList t)


instance (Serialize a) => Serialize (list a) where 
  toString nil = "[]"
  toString l = "[" ++ (toStringList l) ++ "]"
 
  

module People

import list
import Person
import bool

tom: Person
tom = mkPerson "Tom" 19 56 false

mary: Person
mary = mkPerson "Mary" 20 59 true

ge: Person
ge = mkPerson "Ge" 21 64 true

daryl: Person
daryl = mkPerson "Daryl" 19 71 false


people: list Person
people = tom::mary::ge::daryl::nil



mapAge: list Person -> list Nat
mapAge nil = nil
mapAge (h::t) = (age h)::(mapAge t)


women: list Person
women = filter gender people

wAges: list Nat
wAges = Map age women

years: Nat
years = list.foldr plus 0 wAges

oneLine: Nat
oneLine = list.foldr plus 0 (Map age (filter gender people))

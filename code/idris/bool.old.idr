module bool

import pair

data bool = true | false

id_bool: bool -> bool
id_bool b = b

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

||| given a pair of bool values, (a, b), return true if both a and b are true, otherwise return false
andp: pair bool bool -> bool
andp (mkPair true true) = true
andp _  = false

||| given a pair of bool values, (a, b), return false if both a and b are false, otherwise return true
orp: pair bool bool -> bool
orp (mkPair false false) = false
orp _ = true

||| short for "not and", given a pair of bool values, (a, b), return false if both a and b are true, and true otherwise
nandp: pair bool bool -> bool
nandp (mkPair true true) = false
nandp _ = true

|||short for "exclusive or", given a pair of bool values, (a, b), return true if exactly one of a or b is true, and false otherwise
xorp: pair bool bool -> bool
xorp (mkPair true false) = true
xorp (mkPair false true) = true
xorp _ = false


--Exam problem #2: There are 16 possible ways (2 * 2 * 2 * 2 for 2 possibilities in each of the 4 rows) to fill in the result column for a truth table for a binary bool function, and there are thus exactly 8 such functions, and no more


--binary functions (bool -> (bool -> bool)), explicit

pand: bool -> bool -> bool
pand true = id_bool
pand false = constFalse

por: bool -> bool -> bool
por true = constTrue
por false = id_bool

pxor: bool -> bool -> bool
pxor true = not
pxor false = id_bool

pnand: bool -> bool -> bool
pnand true = not
pnand false = constTrue 


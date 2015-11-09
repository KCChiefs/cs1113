module nat

import bool
import Serialize 
import eq

||| A data type to represent the natural numbers.  We use a lower case
||| "n" in the name to distinguish our nat type from Idris's Nat type
data nat = O | S nat


||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n


||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

||| return true if the argument is odd otherwise false
oddb: nat -> bool
oddb n = not (evenb n)


add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add m (mult n m)

fact: nat -> nat
fact O = (S O)
fact (S n) = mult (S n) (fact n)

sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n) (S m) = sub n m

expp: nat -> nat -> nat
expp n O = S O
expp n (S O) = n
expp n (S m) = mult n (expp n m)


||| given a pair of natural numbers, (a, b), return true if a = b otherwise return false
eqpp: nat -> nat -> bool
eqpp O O = true
eqpp n O = false
eqpp O n = false
eqpp (S n) (S m) = eqpp n m

||| given a pair of natural numbers, (a,b), return true if a <= b otherwise return false
lepp: nat -> nat -> bool
lepp O m = true
lepp _ O = false
lepp (S n) (S m) = lepp n m 

||| given a pair of natural numbers, (a, b), return true if a is greater than b, otherwise return false
gtpp: nat -> nat ->  bool
gtpp n m = not (lepp n m) 

||| given a pair of natural numbers, (a, b), return true if a is greater than or equal to b
gepp: nat->  nat -> bool
gepp n O = true
gepp O n = false
gepp (S n) (S m) = gepp n m

||| given a pair of natural numbers, (a, b), return true if a is less than b
ltpp: nat ->  nat -> bool
ltpp n m = not (gepp n m)


instance eq nat where
  eql n1 n2 = eqpp n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)

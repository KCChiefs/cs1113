module nat

import bool
import pair

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


||| given a pair of natural numbers, return its sum
addp: pair nat nat -> nat
addp (mkPair O m) = m
addp (mkPair (S n) m) = S (addp (mkPair n m))

--(addp (mkPair n (S m))) also works

||| given a pair of natural numbers, returns its product
multp: pair nat nat -> nat
multp (mkPair O m) = O
multp (mkPair (S n) m) = addp (mkPair m (multp (mkPair n m)))

||| given a natural number, returns its factorial
factp: nat -> nat
factp O = (S O)
factp (S n) = multp (mkPair (S n) (factp n))

||| given a pair of natural numbers, return its difference
subp: pair nat nat -> nat
subp (mkPair O m) = O
subp (mkPair n O) = n
subp (mkPair (S n) (S m)) = subp (mkPair n m)

||| given a pair of natural numbers, (x,n), return the value of x raised to the nth power
exp: pair nat nat -> nat
exp (mkPair n O) = (S O)
exp (mkPair n (S O)) = n
exp (mkPair n (S m)) = multp (mkPair n (exp (mkPair n m))) 

||| given a pair of natural numbers, (a,b), return true if a <= b otherwise return false
lep: pair nat nat -> bool
lep (mkPair O m) = true
lep (mkPair (S n) O) = false
lep (mkPair (S n) (S m)) = lep (mkPair n m)

||| given a pair of natural numbers, (a, b), return true if a = b otherwise return false
eqp: pair nat nat -> bool 
eqp (mkPair O O) = true
eqp (mkPair n O) = false
eqp (mkPair O n) = false
eqp (mkPair (S n) (S m)) = eqp (mkPair n m) 

||| given a pair of natural numbers, (a, b), return true if a is greater than b, otherwise return false
gtp: pair nat nat -> bool
gtp (mkPair n m) = not (lep (mkPair n m)) 

||| given a pair of natural numbers, (a, b), return true if a is greater than or equal to b
gep: pair nat nat -> bool
gep (mkPair n O) = true
gep (mkPair O n) = false
gep (mkPair (S n) (S m)) = gep (mkPair n m)

||| given a pair of natural numbers, (a, b), return true if a is less than b
ltp: pair nat nat -> bool
ltp (mkPair n m) = not (gep (mkPair n m))

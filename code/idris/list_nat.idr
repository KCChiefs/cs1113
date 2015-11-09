module list_nat

import nat

data list_nat = nil | cons nat list_nat

lO: list_nat
lO = nil

l1: list_nat
l1 = cons O nil

l2: list_nat
l2 = (cons (S O) (cons (S (S O)) nil))

l3: list_nat
l3 = (cons (S O) (cons (S (S O)) (cons (S (S (S O))) nil)))

l4: list_nat
l4 = (cons (S (S O)) (cons (S (S (S O))) (cons (S (S (S (S O)))) nil)))

l5: list_nat
l5 = (cons (S (S (S (S (S O))))) nil)

l6: list_nat
l6 = (cons (S (S (S (S (S O))))) (cons (S (S (S (S (S (S O)))))) (cons (S (S (S (S (S (S (S O))))))) nil)))

length: list_nat -> nat
length nil = O
length (cons n l') = S (length l')

len_l3: nat
len_l3 = length l3

{-
length l3
length (cons (S O) (cons (S (S O)) (cons (S (S (S O))) nil)))
S (length (cons (S (S O)) (cons (S (S (S O))) nil)))
S (S (length (cons (S (S (S O))) nil)))
S (S (S (length nil)))
S (S (S O))
-}

append: list_nat -> list_nat -> list_nat
append nil m = m
append (cons a b) m = cons a (append b m)


append1: list_nat
append1 = append l2 l3

append2: list_nat
append2 = append l4 l5

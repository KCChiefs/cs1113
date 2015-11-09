module listTest

import list
import nat
import days
import bool
import eq
import Serialize 

blahO: nat
blahO = length (O::nil)

blah1: nat 
blah1 = length (true::nil)

blah2: nat
blah2 = length nil {a = nat}

blah3: list bool
blah3 = true::false::true::true::nil

blah4: list bool
blah4 = true::true::nil

blah5: list bool
blah5 = true::true::nil

l1: list Nat
l1 = nil

l2: list Nat
l2 = 56::nil

l3: list Nat 
l3 = 33::88::nil

l4: list Nat
l4 = 98::444::18::58::932::nil

l5: list days
l5 = friday::tuesday::wednesday::friday::saturday::sunday::nil

l6: list days
l6 = saturday::friday::monday::tuesday::nil

l7: list bool
l7 = true::false::true::false::false::nil

|||test case expecting O
length1: nat
length1 = length l1

|||test case expecting S O
length2: nat
length2 = length l2

|||test case expecting S (S O)
length3: nat
length3 = length l3

|||test case expecting S (S (S (S (S O))))
length4: nat
length4 = length l4

|||test case expecting S (S (S (S (S (S O)))))
length5: nat
length5 = length l5

|||test case expecting S (S (S (S O)))
length6: nat
length6 = length l6

|||test case expecting 56::nil
append1: list Nat
append1 = l1 ++ l2

|||test case expecting 98::444::18::58::932::33::88::nil
append2: list Nat
append2 = l4 ++ l3

|||test case expecting 56::98::444::18::58::932::nil
append3: list Nat
append3 = l2 ++ l4

|||test case expecting saturday::friday::monday::tuesday::friday::tuesday::wednesday::friday::saturday::sunday::nil
append4: list days
append4 = l6 ++ l5 

|||test case expecting (S (S (S (S (S (S (S O)))))))
lengthx: nat
lengthx = length (append2)

|||test case expecting (S (S (S (S (S (S (S (S (S (S O))))))))))
lengthy: nat 
lengthy = length (append4)


|||test case expecting true::false::true::true::nil
map1: list bool
map1 = Map evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

|||test case expecting O::(S (S O))::(S (S (S (S O))))::nil
filt1: list nat
filt1 = filter evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)


s: String
s = toString blah3

s1: String
s1 = toString l7


eql1: bool
eql1 = eql l7 blah3

eql2: bool
eql2 = eql l7 l7

eql3: bool
eql3 = eql blah4 blah5

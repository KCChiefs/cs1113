module DNATest

import DNA
import list
import pair

list1: list base
list1 = A::T::G::nil

list2: list (pair base base)
list2 = (mkPair A T)::(mkPair C G)::(mkPair T A)::nil

list3: list base
list3 = A::T::G::C::T::C::T::T::A::nil

list4: list (pair base base)
list4 = (mkPair C G)::(mkPair T A)::(mkPair C G)::(mkPair G C)::nil


complement1: list base
complement1 = complement_strand list1

complement2: list base
complement2 = complement_strand list3


str1: list base
str1 = strand1 list2

str2: list base
str2 = strand1 list4

str3: list base
str3 = strand2 list2

str4: list base
str4 = strand2 list4


compl1: list (pair base base)
compl1 = complete list1

compl2: list (pair base base)
compl2 = complete list3


count1: Nat
count1 = countBase list1 C

count2: Nat
count2 = countBase list3 T

count3: Nat
count3 = countBase list3 A

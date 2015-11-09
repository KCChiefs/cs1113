import set
import eq
import nat
import list
import bool


s0: set nat
s0 = new_set

s1: set nat
s1 = set_insert (S (S O)) s0

s2: set nat
s2 = set_insert (S (S (S (S O)))) s1

s3: set nat
s3 = mkSet ((S (S (S (S O)))) :: S (S O) :: nil)


l1: list bool
l1 = false::true::false::false::nil

l2: list bool
l2 = false::true::false::false::nil

l3: list bool
l3 = false::true::nil

l4: list bool
l4 = true::true::nil

l5: list bool
l5 = nil


eql1: bool
eql1 = eql l1 l2

eql2: bool
eql2 = eql l2 l3 

eql3: bool
eql3 = eql l4 l3


subset1: bool
subset1 = subset_elements l3 l2

subset2: bool
subset2 = subset_elements l5 l3

subset3: bool
subset3 = subset_elements l2 l4


 

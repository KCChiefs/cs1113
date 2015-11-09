module set_adtTest

import set_adt
import list
import Serialize
import eq
import bool
import nat
import pair
import option
import ite1


list1: list nat
list1 = (S (S O))::(S (S (S (S O))))::(S (S O))::(S (S (S (S (S (S O))))))::nil

list2: list nat
list2 = (S O)::(S (S (S O)))::(S (S O))::(S (S (S (S O))))::(S (S O))::(S (S (S (S (S O)))))::nil

list3: list nat
list3 = (S O)::(S (S (S O)))::(S O)::(S (S O))::nil

list4: list nat
list4 = (S (S (S (S O))))::(S (S (S O)))::(S (S O))::(S O)::nil


set1: set nat
set1 = mkSet list1

set2: set nat
set2 = mkSet list2

set3: set nat
set3 = mkSet list3

set4: set nat
set4 = mkSet list4


ins1: set nat
ins1 = set_insert (S (S (S (S (S O))))) set3

ins2: set nat
ins2 = set_insert (S O) set4


rm1: set nat
rm1 = set_remove (S O) set3

rm2: set nat
rm2 = set_remove (S (S (S O))) set2


card1: nat
card1 = set_cardinality set3

card2: nat
card2 = set_cardinality set2


mem1: bool
mem1 = set_member (S (S (S (S (S (S O)))))) set4

mem2: bool
mem2 = set_member (S (S (S (S O)))) set1


union1: set nat
union1 = set_union set3 set4

union2: set nat
union2 = set_union set1 set4


intsct1: set nat
intsct1 = set_intersection set1 set3

intsct2: set nat
intsct2 = set_intersection set2 set4


diff1: set nat
diff1 = set_difference set2 set1

diff2: set nat
diff2 = set_difference set4 set3


forall1: bool
forall1 = set_forall evenb set1

forall2: bool
forall2 = set_forall evenb set3


exists1: bool
exists1 = set_exists evenb set3

exists2: bool
exists2 = set_exists oddb set1


wit1: option nat
wit1 = set_witness evenb set3

wit2: option nat
wit2 = set_witness oddb set1


prod1: set (pair nat nat)
prod1 = set_product set3 set4

prod2: set (pair nat nat)
prod2 = set_product set1 set3


eql1: bool
eql1 = set_eql set3 set4

eql2: bool
eql2 = set_eql set1 set1


Str1: String
Str1 = set_toString set2

Str2: String
Str2 = set_toString (union1)

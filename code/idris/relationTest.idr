module relationTest

import relation
import Person
import list
import bool
import pair 

brian: Person
brian = mkPerson "Brian" 15 70 false

andrea: Person
andrea = mkPerson "Andrea" 23 55 true

john: Person
john = mkPerson "John" 57 64 false

lucy: Person
lucy = mkPerson "Lucy" 43 50 true

elton: Person
elton = mkPerson "Elton" 80 60 false 

kim:Person
kim = mkPerson "Kim" 31 58 true

friends: list Person
friends = brian::andrea::john::lucy::elton::kim::nil


|||Totals the girls' ages, heights, and names in the group
GirlAges: Nat
GirlAges = query2 friends gender age plus 0

GirlInches: Nat
GirlInches = query2 friends gender height plus 0

GirlNames: String
GirlNames = query2 friends gender name (++) ""


|||Counts how many girls are in group of friends
count1: Nat
count1 = count_rel friends gender


|||sums the ages of girls in the group, same result as GirlAges
sum1: Nat
sum1 = sum_rel friends gender age

|||sums the heights of girls in the group, same result as GirlInches
sum2: Nat
sum2 = sum_rel friends gender height


|||averages the ages of girls in the group
avg1: pair Nat Nat
avg1 = ave_rel friends gender age

|||averages the heights of girls in the group
avg2: pair Nat Nat
avg2 = ave_rel friends gender height

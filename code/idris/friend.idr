module friend

import bool

|||a friend is someone who is or isn't trustworthy, who has a name, and who has an age in years

data friend = mkFriend bool String Nat

f1: friend
f1 = mkFriend true "Jimmy" 28

f2: friend
f2 = mkFriend false "Larry" 84

getAge: friend -> Nat
getAge (mkFriend b s n) = n


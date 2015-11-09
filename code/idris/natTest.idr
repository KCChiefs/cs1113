module natTest

import bool
import nat
import Serialize 

|||add function
add1: nat
add1 = add O (S (S (S O)))

add2: nat
add2 = add (S (S (S O))) (S (S O))

add3: nat
add3 = add (S (S O)) (S (S (S (S (S O)))))

add4: nat
add4 = add (S (S O)) O

ptwo: nat -> nat
ptwo = add (S (S O))


|||mult function
mult1: nat
mult1 = mult O (S (S O))

mult2: nat
mult2 = mult (S (S (S (S O)))) (S O)

mult3: nat 
mult3 = mult (S (S (S O))) (S (S O))

mult4: nat
mult4 = mult (S (S O)) (S (S (S (S O))))


|||fact function
fact1: nat
fact1 = fact O

fact2: nat
fact2 = fact (S O)

fact3: nat
fact3 = fact (S (S O))

fact4: nat
fact4 = fact (S (S (S O)))


|||sub function
sub1: nat
sub1 = sub O (S O)

sub2: nat
sub2 = sub (S (S (S O))) O

sub3: nat
sub3 = sub (S (S (S (S (S O))))) (S (S (S O)))

sub4: nat
sub4 = sub (S (S O)) (S (S (S O)))


||| exp function
exp1: nat
exp1 = expp O O

exp2: nat
exp2 = expp (S (S (S O))) (S O)

exp3: nat
exp3 = expp (S (S (S O))) (S (S O))

exp4: nat
exp4 = expp (S O) (S (S (S (S O))))



||| eqpp function
eqpp1: bool
eqpp1 = eqpp O O

eqpp2: bool
eqpp2 = eqpp (S O) O

eqpp3: bool
eqpp3 = eqpp (S (S O)) (S (S O))

eqpp4: bool
eqpp4 = eqpp (S (S (S O))) (S (S (S (S O))))

||| lepp function
lepp1: bool
lepp1 = lepp O (S O)

lepp2: bool
lepp2 = lepp (S O) O

lepp3: bool
lepp3 = lepp (S (S (S O))) (S (S (S (S O))))

lepp4: bool
lepp4 = lepp (S (S O)) (S (S O))

||| gtpp function
gtpp1: bool
gtpp1 = gtpp O O

gtpp2: bool
gtpp2 = gtpp (S (S O)) O

gtpp3: bool
gtpp3 = gtpp (S (S (S O))) (S O)

gtpp4: bool
gtpp4 = gtpp (S (S O)) (S (S O))

gtpp5: bool
gtpp5 = gtpp (S (S O)) (S (S (S O)))

||| gepp function
gepp1: bool
gepp1 = gepp O O

gepp2: bool
gepp2 = gepp (S (S O)) (S (S O))

gepp3: bool
gepp3 = gepp (S O) (S (S O))

gepp4: bool
gepp4 = gepp (S (S (S O))) (S (S (S (S O))))

||| ltpp function
ltpp1: bool
ltpp1 = ltpp O O

ltpp2: bool
ltpp2 = ltpp (S O) (S (S O))

ltpp3: bool
ltpp3 = ltpp (S (S O)) (S (S O))

ltpp4: bool
ltpp4 = ltpp (S (S (S O))) (S (S (S (S O))))

ltpp5: bool
ltpp5 = ltpp (S (S (S (S O)))) (S (S O))



s1: String
s1 = toString (S (S (S O)))

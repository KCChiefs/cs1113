module TennisPlayer

import bool

|||A tennis player has a name, amount of grand slam titles he has won, and whether or not he has won an Olympic gold medal

record TennisPlayer where
   constructor MkPlayer
   name: String
   titles: Nat
   age: Nat
   gold: bool

Fed: TennisPlayer
Fed = MkPlayer "Federer" 17 34 false

Nad: TennisPlayer
Nad = MkPlayer "Nadal" 14 29 true

Djok: TennisPlayer
Djok = MkPlayer "Djokovic" 10 28 false

Agas: TennisPlayer
Agas = MkPlayer "Agassi" 8 45 true 

Murr: TennisPlayer
Murr = MkPlayer "Murray" 2 28 true





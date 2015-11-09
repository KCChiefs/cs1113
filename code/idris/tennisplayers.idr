module tennisplayers

import nat
import list

data player = Federer | Nadal | Djokovic | Murray | Neishikori 

|||a record of this type represents a tennis player and his amount of grand slams won, prize money (in millions of USD) won and how many weeks he has been ranked world No. 1

data tennisrow = mkTennisrow player Nat Nat Nat

fed: tennisrow
fed = mkTennisrow Federer 17 95 302

nad: tennisrow
nad = mkTennisrow Nadal 14 74 141

djok: tennisrow
djok: mkTennisrow Djokovic 10 87 168

murr: tennisrow
murr: mkTennisrow Murray 2 40 0

neish: tennisrow
neish: mkTennisrow Neishikori 0 10 0

TennisrowList: list tennisrow
TennisrowList = fed::nad::djok::murr::neish::nil

TLlength: nat
TLlength = length TennisrowList

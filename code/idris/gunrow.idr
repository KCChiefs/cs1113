module gunrow

import list
import nat

data country = Argentina | Australia | Austria | Honduras | USA

||| a record of this type represents a country and the death rate per 10,000,000 by gun for homicides, suicides, unintentional, other 
 
data gunrow = mkGunrow country Nat Nat Nat Nat 


argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

austral: gunrow
austral = mkGunrow Australia 11 62 5 8

aust: gunrow
aust = mkGunrow Austria 18 268 1 8

hond: gunrow
hond = mkGunrow Honduras 648 0 0 0

us: gunrow
us = mkGunrow USA 355 670 16 9 



countryName: gunrow -> country
countryName (mkGunrow c h s u o) = c 

homicidesPer10M: gunrow -> Nat
homicidesPer10M (mkGunrow c h s u o) = h

suicidesPer10M: gunrow -> Nat
suicidesPer10M (mkGunrow c h s u o) = s

unintentionalsPer10M: gunrow -> Nat
unintentionalsPer10M (mkGunrow c h s u o) = u

othersPer10M: gunrow -> Nat
othersPer10M (mkGunrow c h s u o) = o


GunrowList: list gunrow
GunrowList = argen::austral::aust::hond::us::nil

GLlength: nat
GLlength = length GunrowList

CountryList: list country
CountryList = Argentina::Australia::Austria::Honduras::USA::nil

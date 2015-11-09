module TennisPlayerTest

import list
import nat
import bool
import TennisPlayer
import relation
import pair

goldwinners: list TennisPlayer
goldwinners = Nad::Agas::Murr::nil

allplayers: list TennisPlayer
allplayers = Fed::Nad::Djok::Agas::Murr::nil

none: list TennisPlayer
none = nil


length1: nat
length1 = length allplayers

length2: nat
length2 =  length (goldwinners ++ allplayers)


|||test cases applying Map function to the elements of allplayers, expecting to return lists of names, numbers, or bools
Names: list String
Names = Map name allplayers

Titles: list Nat
Titles = Map titles allplayers

Gold1: list bool
Gold1 = Map gold allplayers

Gold2: list bool
Gold2 = Map gold goldwinners


Random: list bool
Random = Map gold none

Random2: list Nat
Random2 = Map titles none


|||Totals gold winners' ages, heights, and names
GoldTitles: Nat
GoldTitles = query2 allplayers gold titles plus 0

GoldAges: Nat
GoldAges = query2 allplayers gold age plus 0

GoldNames: String
GoldNames = query2 allplayers gold name (++) ""


|||Counts how many gold winners are in group
count2: Nat
count2 = count_rel allplayers gold


|||sums the titles and ages of gold winners, same results as GoldTitles and GoldAges
sum1: Nat
sum1 = sum_rel allplayers gold titles

sum2: Nat
sum2 = sum_rel allplayers gold age


|||averages titles and ages of gold winners
avg1: pair Nat Nat
avg1 = ave_rel allplayers gold titles

avg2: pair Nat Nat
avg2 = ave_rel allplayers gold age

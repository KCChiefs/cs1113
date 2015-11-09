module colors

import bool
import pair

%default total

data color = red | green | blue | cyan | magenta | yellow

complement: color -> color
complement red = cyan
complement green = magenta
complement blue = yellow
complement cyan = red
complement magenta = green
complement yellow = blue

additive: color -> bool
additive red = true
additive green = true
additive blue = true
additive _ = false

subtractive: color -> bool
subtractive t = not (additive t)

complements: (pair color color)-> bool
complements (mkPair red cyan) = true
complements (mkPair cyan red) = true
complements (mkPair yellow blue) = true
complements (mkPair blue yellow) = true
complements (mkPair green magenta) = true
complements (mkPair magenta green) = true
complements (mkPair _ _) = false

mixink: (pair color color) -> color
mixink (mkPair yellow cyan) = green
mixink (mkPair cyan yellow) = green
mixink (mkPair yellow magenta) = red
mixink (mkPair magenta yellow) = red
mixink (mkPair magenta cyan) = blue
mixink (mkPair cyan magenta) = blue 

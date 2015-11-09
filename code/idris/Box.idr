--Box becomes a type constructor 
--type constructor: type -> type
--polymorphic
  --function: 

module Box

import eq
import Serialize
import bool

data Box t = mkBox t 

unbox: Box t -> t
unbox (mkBox b) = b

instance (eq a) => eq (Box a) where
  eql (mkBox v1) (mkBox v2) = eql v1 v2

instance (Serialize a) => Serialize (Box a) where
  toString (mkBox v) = "(" ++ (toString v) ++ ")"
 



PROTO_0:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+4]
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["Luau now has a direct table.isfrozen call that can save the overhead of this library function call"]
  CALL R1 1 0
  GETIMPORT R1 K5 [table.isfrozen]
  MOVE R2 R0
  CALL R1 1 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [_G]
  GETTABLEKS R0 R1 K2 ["__DEV__"]
  GETIMPORT R1 K4 [require]
  GETIMPORT R5 K6 [script]
  GETTABLEKS R4 R5 K7 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Parent"]
  LOADK R4 K8 ["es7-types"]
  NAMECALL R2 R2 K9 ["WaitForChild"]
  CALL R2 2 -1
  CALL R1 -1 1
  DUPCLOSURE R2 K10 [PROTO_0]
  CAPTURE VAL R0
  RETURN R2 1

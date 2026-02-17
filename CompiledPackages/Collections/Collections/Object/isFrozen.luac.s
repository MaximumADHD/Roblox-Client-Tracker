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
  GETIMPORT R2 K4 [script]
  GETTABLEKS R1 R2 K5 ["Parent"]
  GETTABLEKS R3 R1 K5 ["Parent"]
  GETTABLEKS R2 R3 K5 ["Parent"]
  GETIMPORT R3 K7 [require]
  GETTABLEKS R4 R2 K8 ["ES7Types"]
  CALL R3 1 1
  DUPCLOSURE R4 K9 [PROTO_0]
  CAPTURE VAL R0
  RETURN R4 1

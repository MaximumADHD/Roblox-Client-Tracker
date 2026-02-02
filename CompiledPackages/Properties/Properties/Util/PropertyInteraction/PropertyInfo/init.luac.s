MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["fromType"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["fromType"]
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["fromInstanceRefType"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K5 ["fromInstanceRefType"]
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K6 ["fromEnumType"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K6 ["fromEnumType"]
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K7 ["fromContentType"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K7 ["fromContentType"]
  RETURN R0 1

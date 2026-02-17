MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K4 ["fromClass"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K4 ["fromClass"]
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K5 ["fromAttribute"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K5 ["fromAttribute"]
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K6 ["fromTag"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K6 ["fromTag"]
  GETIMPORT R1 K1 [require]
  GETIMPORT R3 K3 [script]
  GETTABLEKS R2 R3 K7 ["fromInstance"]
  CALL R1 1 1
  SETTABLEKS R1 R0 K7 ["fromInstance"]
  RETURN R0 1
